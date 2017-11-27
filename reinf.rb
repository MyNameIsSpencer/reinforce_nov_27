the_best_hash = {}

(1..50).each do |number|
  the_best_hash.merge!(number => number)
end

the_best_hash.each do |key, value|
  if key % 2 == 0 && key % 7 == 0
    value *= 2
    the_best_hash[key] = value
  elsif key % 7 == 0
    value -=1
    the_best_hash[key] = value
  elsif key % 2 == 0
    value += 1
    the_best_hash[key] = value
    # [key => (value += 1)]
  end
end


puts the_best_hash


# {
# 1: 1,
# 2: 3,
# 3: 3,
# 4: 5,
# 5: 5,
# 6: 7,
# 7: 6,
# 8: 9,
# 9: 9,
# 10: 11,
# 11: 11,
# 12: 13,
# 13: 13,
# 14: 28,
# 15: 15,
# 16: 17,
# 17: 17,
# 18: 19,
# 19: 19,
# 20: 21,
# 21: 20,
# ...
# 50: 51
# }
