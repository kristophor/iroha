/**
 * Copyright Soramitsu Co., Ltd. 2017 All Rights Reserved.
 * http://soramitsu.co.jp
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *        http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "consensus/yac/storage/yac_vote_storage.hpp"

#include <algorithm>
#include <utility>

#include <boost/range/adaptor/map.hpp>
#include <boost/range/algorithm/max_element.hpp>
#include "consensus/yac/storage/yac_proposal_storage.hpp"

namespace iroha {
  namespace consensus {
    namespace yac {

      // --------| private api |--------

      YacVoteStorage::OptProposalStoragePtr YacVoteStorage::getProposalStorage(
          const Round &round) const {
        auto it = std::find_if(proposal_storages_.begin(),
                            proposal_storages_.end(),
                            [&round](const auto &storage) {
                              return storage->getStorageKey() == round;
                            });
        if (it == proposal_storages_.end()) {
          return boost::none;
        } else {
          return *it;
        }
      }

      YacVoteStorage::ProposalStoragePtr YacVoteStorage::findProposalStorage(
          const VoteMessage &msg, PeersNumberType peers_in_round) {
        auto val = getProposalStorage(msg.hash.vote_round);
        if (val) {
          return *val;
        }
        return *proposal_storages_.emplace(
            proposal_storages_.end(),
            std::make_shared<YacProposalStorage>(
                msg.hash.vote_round,
                peers_in_round,
                std::make_shared<SupermajorityCheckerImpl>()));
      }

      // --------| public api |--------

      boost::optional<Answer> YacVoteStorage::store(
          std::vector<VoteMessage> state, PeersNumberType peers_in_round) {
        auto storage = findProposalStorage(state.at(0), peers_in_round);
        return storage->insert(state);
      }

      bool YacVoteStorage::isCommitted(const Round &round) {
        return static_cast<bool>(getRoundOutcome(round));
      }

      ProposalState YacVoteStorage::getProcessingState(const Round &round) {
        return processing_state_[round];
      }

      void YacVoteStorage::nextProcessingState(const Round &round) {
        auto &val = processing_state_[round];
        switch (val) {
          case ProposalState::kNotSentNotProcessed:
            val = ProposalState::kSentNotProcessed;
            break;
          case ProposalState::kSentNotProcessed:
            val = ProposalState::kSentProcessed;
          case ProposalState::kSentProcessed:
            last_sent_processed_proposal_round_ =
                last_sent_processed_proposal_round_
                ? std::max(*last_sent_processed_proposal_round_, round)
                : round;
        }
      }

      boost::optional<Round> YacVoteStorage::getLastCompletedRound() const {
        BOOST_ASSERT_MSG(
            !last_sent_processed_proposal_round_
                or boost::range::max_element(
                       processing_state_,
                       [](const auto &lhs, const auto &rhs) {
                         return lhs.second == ProposalState::kSentProcessed
                             and rhs.second == ProposalState::kSentProcessed
                             and lhs.first < rhs.first;
                       })
                        ->first
                    == *last_sent_processed_proposal_round_,
            "Wrong last sent processed proposal round!");
        return last_sent_processed_proposal_round_;
      }

      boost::optional<Answer> YacVoteStorage::getRoundOutcome(
          const Round &round) const {
        auto opt_proposal_storage = getProposalStorage(round);
        if (opt_proposal_storage) {
          return (*opt_proposal_storage)->getState();
        }
        return boost::none;
      }

    }  // namespace yac
  }    // namespace consensus
}  // namespace iroha
