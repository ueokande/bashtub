testcase_partialy_matches() {
  local TMPFILE=$(mktemp -t tmp.XXXXXX)
  echo 'testcase_compare_numbers() {
    assert_match cdef abcdefgh
  }' >$TMPFILE
  assert_true $0 $TMPFILE
  rm $TMPFILE
}

testcase_matches_heads() {
  local TMPFILE=$(mktemp -t tmp.XXXXXX)
  echo 'testcase_compare_numbers() {
    assert_match ^abc abcdefgh
  }' >$TMPFILE
  assert_true $0 $TMPFILE
  rm $TMPFILE
}

testcase_matches_tails() {
  local TMPFILE=$(mktemp -t tmp.XXXXXX)
  echo 'testcase_compare_numbers() {
    assert_match fgh$ abcdefgh
  }' >$TMPFILE
  assert_true $0 $TMPFILE
  rm $TMPFILE
}

testcase_matches_with_spaces() {
  local TMPFILE=$(mktemp -t tmp.XXXXXX)
  echo 'testcase_compare_numbers() {
    assert_match " is a " "This is a pen"
  }' >$TMPFILE
  assert_true $0 $TMPFILE
  rm $TMPFILE
}

testcase_not_matches_with_spaces() {
  local TMPFILE=$(mktemp -t tmp.XXXXXX)
  echo 'testcase_compare_numbers() {
    assert_match " is a " "This apple"
  }' >$TMPFILE
  assert_false $0 $TMPFILE
  rm $TMPFILE
}
