# https://leetcode.com/problems/binary-tree-paths

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def binary_tree_paths(root)
  arr = []
  path = nil
  find_children(root, arr, path)
end

def find_children(node, arr, path)
  return arr if node.nil?

  if path.nil?
    path = node.val.to_s
  else
    path += "->#{node.val}"
  end
  arr << path if node.left.nil? && node.right.nil?

  find_children(node.left, arr, path)
  find_children(node.right, arr, path)
end

node1 = TreeNode.new(2)
node2 = TreeNode.new(3)
node3 = TreeNode.new(4)
node4 = TreeNode.new(5, node2, node3)
root = TreeNode.new(1, node1, node4)
puts binary_tree_paths(root)
