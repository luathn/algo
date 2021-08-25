# https://leetcode.com/problems/check-if-string-is-a-prefix-of-array/

def is_prefix_string(s, words)
  str = ''
  words.each do |w|
    str += w
    return true if str == s
  end
  false
end

s = 'iloveleetcode'
words = %w[i love leetcode apples]

puts is_prefix_string(s, words)
