setup() {
  TMPDIR=$(mktemp -d)
  for i in `seq 10`; do
    echo $((i * 2)) >"$TMPDIR/${i}"
  done
}

teardown() {
  rm -rf "$TMPDIR"
}

testcase_file_contains_double_of_name() {
  for f in $TMPDIR/*; do
    subject cat $f
    assert_equal $(basename $f) $(($stdout / 2))
  done
}
