def print_infix (node)
  if node.nil?
    return nil
  end
  # if prefix the puts would be here
  print_infix(node.left)
  puts node.data
  print_infix(node.right)
  # if postfix the puts would be here
end
