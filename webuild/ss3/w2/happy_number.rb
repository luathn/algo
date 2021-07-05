# # 1. Happy Number

# https://leetcode.com/problems/happy-number/

# ## 1.1. Summary

# - Using an array to store all numbers just check is_happy. Try to use hash but array a little bit faster, I think because this array stores just a few numbers.
# - Split number and calculate square, check if it is happy, store to the array. If not, just loop this step until arr includes number, so this number is not happy, lol.

# ## 1.2. Code

# array
def is_happy(number)
  arr = []
  while !arr.include?(number)
    arr << number
    number = number.digits.sum {|x| x**2}
    return true if number == 1
  end
  false
end

# hash
def is_happy(n)
    nums = {}
    while n != 1
        n = n.digits.sum {|x| x**2}
        return false if nums.key?(n)
        nums[n] = true
    end
    true
end
