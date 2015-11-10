testcase_outputs_missing_operand() {
  subject $0
  assert_match 'missing' "$stderr"
  assert_equal 1 $status
}

testcase_outputs_help() {
  subject $0 --help
  assert_match 'Usage' "$stdout"
}

testcase_output_version() {
  subject $0 --version
  assert_match 'bashtub' "$stdout"
}

testcase_output_unrecognized_short_option() {
  subject $0 -Z
  assert_match 'unrecognized' "$stderr"
  assert_match 'Z' "$stderr"
  assert_equal 1 $status
}

testcase_output_unrecognized_long_option() {
  subject $0 --sushi
  assert_match 'unrecognized' "$stderr"
  assert_match 'sushi' "$stderr"
  assert_equal 1 $status
}
