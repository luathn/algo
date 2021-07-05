def find_closest_elements(arr, k, x)
  len = arr.length
  min = 0
  max = len - 1
end

def find_closest_index(arr, first_i, last_i, x)
  new_arr = arr[first_i..last_i]
  len = first_i + last_i + 1
  middle_index = (first_i + last_i + 1) / 2
  middle = new_arr[middle_index]
  return middle_index if middle == x

  # puts "xxx"
  # puts new_arr.to_s
  # puts first_i
  # puts last_i
  # puts middle_index

  return arr.first if len == 1

  if len == 2
    return first_i if (x - new_arr[first_i]).abs < (x - new_arr[last_i]).abs

    return last_i
  end
  if x < middle
    first_i = 0
    last_i = middle_index - 1
  else
    first_i = middle_index
    last_i = len - 1
  end
  find_closest_index(new_arr[first_i..last_i], first_i, last_i, x)
end


arr = [1, 3, 4, 9, 10]
# puts find_closest_elements([1, 3, 4, 9, 10], 5, 2)

puts find_closest_index(arr, 0, 4, 8)
