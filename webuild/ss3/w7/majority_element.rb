def majority_element(nums)
  len = nums.length
  hash = {}
  nums.each do |n|
    if hash.include?(n)
      hash[n] += 1
    else
      hash[n] = 1
    end
    return n if hash[n] > len / 2
  end
end

nums = [2, 2, 1, 1, 1, 2, 2]

puts majority_element(nums)
