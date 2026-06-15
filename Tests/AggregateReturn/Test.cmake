include("${CMAKE_CURRENT_LIST_DIR}/../RuxTestingFramework.cmake")

message(STATUS "Using rux: ${RUX}")

rux_register_error(1 "16-byte tuple return corrupted bool field")
rux_register_error(2 "16-byte tuple return corrupted integer field")
rux_register_error(3 ">16-byte struct return corrupted length field")
rux_register_error(4 ">16-byte struct return corrupted capacity field")
rux_register_error(5 ">16-byte struct return corrupted pointer field")

rux_prepare_test("${TEST_DIR}" "aggregate_return_test" target_binary)

rux_assert_executable("${target_binary}")
