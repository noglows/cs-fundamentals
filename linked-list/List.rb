require './Node.rb'
require 'pry'

class List
  attr_accessor :head

  def initialize
	  @head = nil
  end

  def empty?
	  @head.nil?
  end

  def add(data)
    # if the list is empty, add the first node
	  if @head == nil
	    @head = Node.new(data,nil)
    else
      # if the list isn't empty, add after the last node
      # make b node
      # make b point at the head
      # reassign head
      temp = @head
      while temp.next != nil
        temp = temp.next
      end
      temp.next = Node.new(data, nil)
	  end
  end

  # NOT COMPLETE YET
  def add_at_index(index, data)
    temp = @head
    count = 0
    until count == index
      #temp.next != nil
      temp = temp.next
      count += 1
    end
    #@head.data =
    # index = 0
    # binding.pry
  end

  def delete_at_index(index)
    # TODO Challenge: remove data from a specific index
  end

  def contains?(data)
    temp = @head
    while temp != nil
      if temp.data == data
        return true
      end
      temp = temp.next
    end
    return false
  end

  def to_s
    # if the list is empty, say so
    return "List is empty" if empty?
    # Otherwise, traverse through list to print contents
	  s = "List contents: "
	  temp = @head       # creates a temp pointer so we don't lose head of list
	  while temp != nil  # while the current node isn't nil
	    s += temp.to_s   # add the current node's data to print
      temp = temp.next # move to the next node
	  end
	  return s
  end
end
