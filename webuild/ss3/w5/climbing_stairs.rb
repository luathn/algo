def climb_stairs(n)
  hash = { 1 => 1, 2 => 2 }
  recursive(n, hash)
end

def recursive(n, hash)
  return hash[n] if hash.include?(n)

  hash[n] = recursive(n-1, hash) + recursive(n-2, hash)
end

puts climb_stairs(38)
