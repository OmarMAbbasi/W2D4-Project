def first_anagram?(str_1, str_2) #n!
    str_1.split("").permutation.to_a.include?(str_2.split(""))
end


def second_anagram?(str_1, str_2) #n!
  arr_1 = str_1.split("")
  arr_2 = str_2.split("")
  arr_1.each_with_index do |char,idx|
    idx_2 = arr_2.index(char)
    arr_2.delete_at(idx_2) unless idx_2.nil?
  end
  return arr_2.length == 0
end

def third_anagram?(str_1, str_2) #n!
  arr1 = str_1.split("").sort 
  arr2 = str_2.split("").sort
  arr1 == arr2
end

def fourth_anagram?(str_1, str_2) #n!
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)
  (0...str_1.length).each do |i|
    hash1[str_1[i]] += 1
    hash2[str_2[i]] += 1 unless str_2[i].nil?
  end
  hash1 == hash2
end

def bonus_anagram?(str_1, str_2) #n!
  alpha = ("a".."z").to_a
  hash = {}
  alpha.each.with_index do |char, i|
    hash[char] = (i + 1)
  end
  str1_value = 0
  str_1.split("").each do |char|
    str1_value += hash[char]
  end
  str2_value = 0
  str_2.split("").each do |char|
    str2_value += hash[char]
  end
  str1_value == str2_value
end

p bonus_anagram?("gizmo", "sally")    #=> false
p bonus_anagram?("elvis", "lives")    #=> true


