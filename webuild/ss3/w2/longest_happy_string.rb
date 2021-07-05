# # 2. Longest Happy String

# https://leetcode.com/problems/longest-happy-string/

# ## 2.1. Summary

# - Using a multidimensional array to store character and number of rest characters.
# - Sort array DESC.
# - Find the next character to add to the final string.
# - Add to string, decrease the number of rest characters in store.
# - Loop until can not find next char.

# ## 2.2. Code

def longest_diverse_string(a, b, c)
  arr = [[a, "a"], [b, "b"], [c, "c"]]
  str = ""
  while true
    arr = arr.sort.reverse
    next_char_index = find_next_char_index(arr, str)
    break if next_char_index.nil?
    add_char(arr, str, next_char_index)
  end
  return str
end

def find_next_char_index(arr, str)
  length = str.length
  if length > 1 && arr[0][1] == str[length-1] && arr[0][1] == str[length-2]
    return nil if arr[1][0] == 0
    return 1
  else
    return nil if arr[0][0] == 0
    return 0
  end
end

def add_char(arr, str, index)
  next_char = arr[index][1]
  str << next_char
  arr[index][0] -= 1
end
