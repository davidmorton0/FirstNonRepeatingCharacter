def  first_non_repeating_letter(s)
  s = s.tr("?", "")
  result = s.chars.select { |c| s.scan(Regexp.new("#{c}", Regexp::IGNORECASE)).count == 1 }.first
  return result == nil ? '' : result
end
