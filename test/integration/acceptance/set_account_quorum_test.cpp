/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#include <gtest/gtest.h>
#include "framework/integration_framework/integration_test_framework.hpp"
#include "integration/acceptance/acceptance_fixture.hpp"

using namespace integration_framework;
using namespace shared_model;
using namespace common_constants;

#define check(i) [](auto &block) { ASSERT_EQ(block->transactions().size(), i); }

class QuorumFixture : public AcceptanceFixture {
 public:
  QuorumFixture() : itf(1) {}

  void SetUp() override {
    auto add_public_key_tx = complete(
        baseTx(kAdminId).addSignatory(kAdminId, kUserKeypair.publicKey()),
        kAdminKeypair);
    itf.setInitialState(kAdminKeypair).sendTxAwait(add_public_key_tx, check(1));
  }

  IntegrationTestFramework itf;
};

/**
 * @given a user with two signatories linked
 * @when the user tries to set own quorum equal two
 * @then the transaction is committed
 */
TEST_F(QuorumFixture, CanRaiseQuorum) {
  const auto new_quorum = 2;
  auto raise_quorum_tx = complete(
      baseTx(kAdminId).setAccountQuorum(kAdminId, new_quorum), kAdminKeypair);
  itf.sendTxAwait(raise_quorum_tx, check(1));
}

/**
 * @given a user with two signatories linked
 * @when the user tries to set own quorum more (3) than amount of signatories
 * (2)
 * @then the transaction did not pass stateful validation
 */
TEST_F(QuorumFixture, CannotRaiseQuorumMoreThanSignatures) {
  const auto new_quorum = 3;
  auto raise_quorum_tx = complete(
      baseTx(kAdminId).setAccountQuorum(kAdminId, new_quorum), kAdminKeypair);
  itf.sendTxAwait(raise_quorum_tx, check(0))
      .getTxStatus(raise_quorum_tx.hash(), CHECK_STATEFUL_INVALID);
}

/**
 * @given a user with two signatories linked
 * @when the user tries to increase quorum and then to lower again
 * @then all the transactions are committed
 */
TEST_F(QuorumFixture, CanLowerQuorum) {
  const auto first_quorum = 2;
  const auto second_quorum = 1;
  auto raise_quorum_tx = complete(
      baseTx(kAdminId).setAccountQuorum(kAdminId, first_quorum), kAdminKeypair);
  auto lower_quorum_tx = baseTx(kAdminId)
                             .quorum(2)
                             .setAccountQuorum(kAdminId, second_quorum)
                             .build()
                             .signAndAddSignature(kAdminKeypair)
                             .signAndAddSignature(kUserKeypair)
                             .finish();
  itf.sendTxAwait(raise_quorum_tx, check(1));
  itf.sendTxAwait(lower_quorum_tx, check(1));
}

/**
 * @given a user with two signatories linked
 * @when the user tries to set zero quorum
 * @then the transaction did not pass stateless validation
 */
TEST_F(QuorumFixture, CannotSetZeroQuorum) {
  const auto quorum = 0;
  auto quorum_tx = complete(baseTx(kAdminId).setAccountQuorum(kAdminId, quorum),
                            kAdminKeypair);
  itf.sendTx(quorum_tx, CHECK_STATELESS_INVALID);
}
