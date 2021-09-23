# 2. https://leetcode.com/problems/number-of-1-bits/

def hamming_weight(n)
  (0..31).inject(0) { |sum, i| sum + (((n >> i) & 1 | 0) == 1 ? 1 : 0) }
end

puts hamming_weight(0b00000010100101000001111010011100)
