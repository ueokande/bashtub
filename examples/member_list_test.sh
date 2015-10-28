SOURCE_FILE=$(dirname $BASH_SOURCE)/member_list.txt

testcase_list_has_5_item() {
  subject wc -l $SOURCE_FILE
  assert_match '6' "$stdout"
}

testcase_list_has_3_females() {
  subject "grep female $SOURCE_FILE | wc -l"
  assert_match '3' "$stdout"
}

testcase_list_contains_bob() {
  assert_true grep -i 'bob' $SOURCE_FILE
}

testcase_list_does_not_contains_zoe() {
  assert_false grep -i 'zoe' $SOURCE_FILE
}

testcase_list_does_not_contains_zoe() {
  assert_false grep -i 'zoe' $SOURCE_FILE
}
