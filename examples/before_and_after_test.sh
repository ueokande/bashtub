before_each() {
  TMPDIR=$(mktemp -d)
}

after_each() {
  rm -rf "$TMPDIR"
}

testcase_file_is_empty() {
  local tmpfile=$(mktemp -p $TMPDIR)
  subject file $tmpfile
  assert_match "empty" "$stdout"
}

testcase_file_is_tar() {
  local tmpfile=$(mktemp -p $TMPDIR)
  local tarfile=$TMPDIR/temporary.tar
  tar cfP $tarfile $tmpfile
  subject file $tarfile
  assert_match "tar" "$stdout"
}
