def generate_parenthesis(n)
  hash = {}
  if n == 1
    hash["()"] = 1
    return ["()"]
  end
  arr_of_str = generate_parenthesis(n - 1)
  arr_of_str.each do |str|
    str.each_char.with_index do |c, index|
      new = str[0..index] + "()" + str[(index+1)..]
      if !hash.include?(new)
        hash[new] = 1
      end
    end
  end
  hash.keys
end

puts generate_parenthesis(3)
