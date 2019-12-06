def  first_non_repeating_letter(s)
  result = s.chars.find { |c| (c == '?' ? s.scan(Regexp.new("#{c}")) :
                        s.scan(Regexp.new("#{c}", Regexp::IGNORECASE))).count == 1 }
  return result == nil ? '' : result
end
