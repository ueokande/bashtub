testcase_assertion_true_passes_with_number_comparison() {
  local TMPFILE=$(mktemp -t tmp.XXXXXX)
  echo 'testcase_assert_true() {
    assert_true [[ $((2 + 3)) -eq $((1 + 4)) ]]
  }' >$TMPFILE
  assert_true $0 $TMPFILE
  rm $TMPFILE
}

testcase_assertion_fails_with_inverted_truth() {
  local TMPFILE=$(mktemp -t tmp.XXXXXX)
  echo 'testcase_assert_true() {
    assert_true false
  }' >$TMPFILE
  assert_false $0 $TMPFILE
  rm $TMPFILE
}

testcase_assertion_passes_with_assert_false() {
  local TMPFILE=$(mktemp -t tmp.XXXXXX)
  echo 'testcase_assert_true() {
    assert_false false
  }' >$TMPFILE
  assert_true $0 $TMPFILE
  rm $TMPFILE
}

