# https://leetcode.com/problems/binary-tree-level-order-traversal/

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

# @param {TreeNode} root
# @return {Integer[][]}
def level_order(root)
  result = []
  arr = []
  arr << root if root
  until arr.empty?
    result << arr.map { |n| n.val }
    level = []
    arr.each do |node|
      level << node.left if node.left
      level << node.right if node.right
    end
    arr = level
  end
  result
end

a = TreeNode.new(15)
b = TreeNode.new(7)
c = TreeNode.new(9)
d = TreeNode.new(20, a, b)
root = TreeNode.new(3, c, d)
root2 = TreeNode.new(1)

puts level_order(root).to_s
