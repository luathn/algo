def is_valid(s)
  brackets_hash = { "(" => ")", "[" => "]", "{" => "}" }
  stack = []
  s.each_char do |c|
    if brackets_hash.keys.include?(c)
      stack.push(c)
    else
      return false if brackets_hash[stack.pop] != c
    end
  end
  stack.empty?
end

puts is_valid("([)]")
