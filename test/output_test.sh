testcase_result_ontains_number_of_examples() {
  local TMPFILE=$(mktemp)
  echo '
  testcase_my_test_case() {
    assert_true true
    assert_true true
    assert_true true
  }
  ' >$TMPFILE
  subject $0 $TMPFILE
  assert_match '3 examples' "$stdout"
  rm $TMPFILE
}

testcase_result_ontains_number_of_examples_and_failures() {
  local TMPFILE=$(mktemp)
  echo '
  testcase_my_test_case() {
    assert_true true
    assert_true true
    assert_true true
    assert_true false
    assert_true false
  }
  ' >$TMPFILE
  subject $0 $TMPFILE
  assert_match '5 examples' "$stdout"
  assert_match '2 failures' "$stdout"
  assert_match 'My test case' "$stdout"
  rm $TMPFILE
}
