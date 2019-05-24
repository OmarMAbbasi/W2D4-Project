require "byebug"

#n^2
# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# list = [ 5, 3, -7 ]

def my_min(list)
  smallest = list[0]
  list[0...-1].each do |ele1|
    list[1..-1].each do |ele2|
      smallest = ele2 if ele2 < ele1
    end
  end
  smallest
end

#n
def better_my_min(list)
  smallest = list.first
  list[1..-1].each do |ele|
    smallest = ele if smallest > ele
  end
  smallest
end

#n^3
def largest_contigous_subsum(list)
  largest = better_my_min(list)
  (0...list.length).each do |i|
    (i...list.length).each do |j|
      #debugger
      contig_sum = list[i..j].sum
      largest = contig_sum if contig_sum >= largest
    end
  end
  largest
end

#n
def better_largest_contigous_subsum(list)
  largest = list[0]
  running = 0
  (0...list.length).each do |i|
    running += list[i]
    largest = running if running > largest
    running = 0 if running < 0
  end
  return largest  
end

list = [2, 3, -6, 7, -6, 7]
list2 = [5, 3, -7]
list3 = [-5, -1, -3]

p better_largest_contigous_subsum(list)
p better_largest_contigous_subsum(list2)
p better_largest_contigous_subsum(list3)

