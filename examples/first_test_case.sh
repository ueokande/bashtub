lorem_ipsum='lorem ipsum dolor sit amet'

testcase_first_word() {
  first_word=$(echo $lorem_ipsum | cut -f1 -d' ')
  assert_equal 'lorem' $first_word
}

testcase_word_count() {
  number_of_words=$(echo $lorem_ipsum | wc -w)
  assert_match 5 $number_of_words
}
