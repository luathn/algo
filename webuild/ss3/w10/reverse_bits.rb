# 1. https://leetcode.com/problems/reverse-bits/

def reverse_bits(n)
  (0..31).inject(0) { |sum, i| sum + (((n >> i) & 1) << (31 - i)) }
end

puts reverse_bits(0b00000010100101000001111010011100)
