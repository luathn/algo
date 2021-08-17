# https://leetcode.com/problems/majority-element/

# def majority_element(nums)
#   len = nums.length
#   hash = {}
#   nums.each do |n|
#     if hash.include?(n)
#       hash[n] += 1
#     else
#       hash[n] = 1
#     end
#     return n if hash[n] > len / 2
#   end
# end

def majority_element(nums)
  majority_num = nums[0]
  count = 0
  nums.each do |n|
    if n == majority_num
      count += 1
    elsif count.zero?
      majority_num = n
      count += 1
    else
      count -= 1
    end
  end
  majority_num
end

nums = [2, 2, 1, 1, 1, 2, 2]

puts majority_element(nums)
