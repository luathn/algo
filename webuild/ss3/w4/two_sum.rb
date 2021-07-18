def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |num, index|
    offset = target - num
    return [hash[offset], index] if hash.include?(offset)
    hash[num] = index
  end
end
