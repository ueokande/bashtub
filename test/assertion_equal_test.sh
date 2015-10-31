testcase_comapres_numbers() {
  local TMPFILE=$(mktemp)
  echo 'testcase_compare_numbers() {
    assert_equal 10 $((2 + 8))
  }' >$TMPFILE
  assert_true $0 $TMPFILE
  rm $TMPFILE
}

testcase_comapres_spaced_string() {
  local TMPFILE=$(mktemp)
  echo 'testcase_compare_numbers() {
    assert_equal "alice bob" "alice bob"
  }' >$TMPFILE
  assert_true $0 $TMPFILE
  rm $TMPFILE
}

testcase_unmatched_strings() {
  local TMPFILE=$(mktemp)
  echo 'testcase_compare_numbers() {
    assert_equal "apple" "pineapple"
  }' >$TMPFILE
  assert_false $0 $TMPFILE
  rm $TMPFILE
}
