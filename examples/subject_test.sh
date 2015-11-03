hello_in() {
  case $1 in
  english) echo Hello;;
  italian) echo Ciao;;
  *) echo unsupported $1 >&2; return 1;;
  esac
  return 0
}

testcase_translate_to_english() {
  subject hello_in english
  assert_equal 0 $status
  assert_match 'Hello' "$stdout"
}

testcase_translate_to_unsupported_language() {
  subject hello_in bash
  assert_equal 1 $status
  assert_match 'bash' "$stderr"
}
