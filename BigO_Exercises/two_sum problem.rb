def two_sum? (arr, target_sum)
  combs = arr.combination(2)
  combs.any? {|suba| suba.sum == target_sum}
end

arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false

def okay_two_sum?(arr, target_sum)

end