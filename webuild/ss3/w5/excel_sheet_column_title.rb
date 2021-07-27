@alphabet = ('A'..'Z').to_a
def convert_to_title(column_number)
  return @alphabet[column_number - 1] if column_number <= 26
  
  column_number, offset = column_number.divmod(26)
  if offset == 0
    column_number -= 1
  end
  return convert_to_title(column_number) + @alphabet[offset - 1]
end

# puts convert_to_title(1) == "A"
# puts convert_to_title(26) == "Z"
# puts convert_to_title(27) == "AA"
# puts convert_to_title(28) == "AB"
# puts convert_to_title(52) == "AZ"
# puts convert_to_title(702) == "ZZ"
puts convert_to_title(703)
