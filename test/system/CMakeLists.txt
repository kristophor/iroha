addtest(irohad_test irohad_test.cpp)
target_link_libraries(irohad_test
        boost
        SOCI::core
        SOCI::postgresql
        rapidjson
        integration_framework_config_helper
        libs_files
        shared_model_proto_backend
        acceptance_fixture
        command_client
        query_client
        keys_manager
        )
add_dependencies(irohad_test irohad)
add_definitions(-DPATHIROHAD="${PROJECT_BINARY_DIR}/bin")
add_definitions(-DPATHTESTDATA="${CMAKE_CURRENT_SOURCE_DIR}/irohad_test_data")
