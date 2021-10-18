# https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/

def search_range(nums, target)
  first = last = find_index(nums, 0, nums.length - 1, target)
  return [-1, -1] if first.nil?

  i = 1
  while true
    break if ((first - i) < 0 && (last + i) > (nums.length - 1)) || nums[first - i] != target && nums[last + i] != target

    first -= i if (first - i) >= 0 && nums[first - i] == target
    last += i if (last + i) <= (nums.length - 1) && nums[last + i] == target
  end
  [first, last]
end

def find_index(nums, left, right, target)
  len = right - left + 1
  return nil if len == 0

  middle = (right + left) / 2
  return nil if len == 1 && nums[middle] != target
  return middle if nums[middle] == target
  return find_index(nums, left, middle, target) if nums[middle] > target
  return find_index(nums, middle + 1, right, target) if nums[middle] < target
end

# arr = [5, 7, 7, 8, 8, 10]
arr = [2, 2]
# arr = [1, 2, 3, 3, 3, 3, 4, 5, 9]

puts search_range(arr, 2)
