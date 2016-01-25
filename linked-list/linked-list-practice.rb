require './List.rb'
require 'pry'

def count_node(list)
  temp = list.head
  count = 0
  while temp != nil
    count += 1
    temp = temp.next
  end
  return count
end

def find_min(list)
  temp = list.head
  min = temp.data
  while temp != nil
    if temp.data < min
      min = temp.data
    end
    temp = temp.next
  end
  return min
end

def reverse(list)
  if count_node(list) == 0
    return nil
  elsif count_node(list) == 1
    return list
  end

  current_node = list.head
  previous_node = nil
  while current_node != nil
    next_node = current_node.next
    current_node.next = previous_node
    previous_node = current_node
    current_node = next_node
    binding.pry
  end

  list.head = previous_node

  return list
end


# def reverse_different(list)
#   reverse = nil
#   if reverse == nil
#     reverse = head
#     head = head.next
#     reverse.next = nil
#   else
#     while !head.nil?
#       temp = head
#       head = head.next
#       temp.next = reverse
#       reverse = temp
#     end
#     head = reverse
#   end
#
# end
# create a new linked list
my_list = List.new

# put some stuff in the list
my_list.add(2)
my_list.add(0)
my_list.add(6)


# test methods above
puts "What's in my list?"
puts my_list

puts "NODE COUNT = #{count_node(my_list)}"
puts "SMALLEST ELEMENT = #{find_min(my_list)}"
puts "REVERSED LIST = #{reverse(my_list)}"
