# https://leetcode.com/problems/sum-root-to-leaf-numbers/submissions/

class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end

def sum_numbers(root)
  arr = []
  sum_p = 0
  sum_path(root, arr, sum_p)
end

def sum_path(node, arr, sum_p)
  return arr.sum if node.nil?

  sum_p = sum_p * 10 + node.val
  arr << sum_p if node.left.nil? && node.right.nil?
  sum_path(node.left, arr, sum_p)
  sum_path(node.right, arr, sum_p)
end

node1 = TreeNode.new(2)
node2 = TreeNode.new(3)
node3 = TreeNode.new(4)
node4 = TreeNode.new(5, node2, node3)
root = TreeNode.new(1, node1, node4)
puts sum_numbers(root)
