require './List.rb'
require './Node.rb'

x = List.new
puts "Is the list empty? " + x.empty?.to_s
puts x.to_s
x.add("a")
puts x.to_s
puts "Is the list empty? " + x.empty?.to_s
x.add("b")
x.add("c")
#x.add(0,"z") # [z][a][b][c]
#x.delete(1) # [z][b][c]
puts x.to_s

puts x.contains?("c")
puts x.contains?("z")

x.add_at_index(0,"z")
puts x.to_s
x.add_at_index(4,"j")
puts x.to_s
