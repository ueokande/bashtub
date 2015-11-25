declare -i global_number=0

testcase_1st_increment() {
  global_number+=1
  assert_equal 1 $global_number
}

testcase_2nd_increment() {
  global_number+=1
  assert_equal 1 $global_number
}
