def dividable?(a, b)
  # if b != 0 && a % b == 0
  #   true
  # else
  #   false
  # end

  if b == 0
    return false
  end

  if a % b == 0
    true
  else
    false
  end
end

puts dividable?(10, 2)
puts dividable?(10, 3)
puts dividable?(10, 0)
