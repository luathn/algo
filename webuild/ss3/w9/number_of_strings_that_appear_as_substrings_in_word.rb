# https://leetcode.com/problems/number-of-strings-that-appear-as-substrings-in-word/

def num_of_strings(patterns, word)
  hash = {}
  count = 0
  patterns.each do |p|
    if hash.include?(p)
      count += 1
    elsif word.include?(p)
      hash[p] = true
      count += 1
    end
  end
  count
end

patterns = %w[a abc bc d]
word = 'abc'

puts num_of_strings(patterns, word)
