testcase_success_on_assert_match() {
  assert_match "^123" "123456789"
}

testcase_failure_on_assert_match() {
  assert_match "123 " "123456789"
}

testcase_success_on_assert_equal() {
  assert_equal "123456789" "123456789"
}

testcase_failure_on_assert_equal() {
  assert_equal "123" "123456789"
}
