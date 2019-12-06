require "test/unit/assertions"
include Test::Unit::Assertions

def  first_non_repeating_letter(s)
  result = s.chars.find { |c| (c == '?' ? s.scan(Regexp.new("#{c}")) :
                        s.scan(Regexp.new("#{c}", Regexp::IGNORECASE))).count == 1 }
  return result == nil ? '' : result
end

assert_equal(first_non_repeating_letter('a'), 'a')
assert_equal(first_non_repeating_letter('stress'), 't')
assert_equal(first_non_repeating_letter('moonmen'), 'e')
assert_equal(first_non_repeating_letter(''), '')
