class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

node1 = TreeNode.new(1)
node3 = TreeNode.new(3)
node7 = TreeNode.new(7)
node4 = TreeNode.new(4, node3, node7)
root = TreeNode.new(2, node1, node4)

def search_tree(node, x)
  return nil if node.nil?
  return node if node.val == x

  if x < node.val
    search_tree(node.left, x)
  else
    search_tree(node.right, x)
  end
end

def find_min(node)
  return nil if node.nil?

  min = node
  min = min.left while min.left
  min
end

def travel_tree(node)
  unless node.nil?
    travel_tree(node.left)
    puts node.val
    travel_tree(node.right)
  end
end

def insert_tree(node, x)
  insert_to_node(node, x)
  insert_tree(node.left, x) if x < node.val
  insert_tree(node.right, x) if x > node.val
end

def insert_to_node(node, x)
  node.left = TreeNode.new(x) if node.left.nil? && x < node.val
  node.right = TreeNode.new(x) if node.right.nil? && x > node.val
end

# puts search_tree(root, 3).val
# puts find_min(root).val

insert_tree(root, 5)
travel_tree(root)
