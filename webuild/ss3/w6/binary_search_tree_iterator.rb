# https://leetcode.com/problems/binary-search-tree-iterator

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

class BSTIterator
  # type root: TreeNode
  def initialize(root)
    @sorted_node = BSTIterator.sort_node(root)
    @current_index = -1
  end

  # rtype: Integer
  def next
    index = @current_index += 1
    @sorted_node[index].val
  end

  # rtype: Boolean
  def has_next
    @current_index < @sorted_node.length - 1
  end

  class << self
    def sort_node(node)
      arr = []

      recursive(node, arr)
    end

    def recursive(node, arr)
      return if node&.val.nil?

      recursive(node.left, arr) if node.left

      arr << node
      recursive(node.right, arr) if node.right

      arr
    end
  end
end

# 7, 3, 15, null, null, 9, 20

a = TreeNode.new(3)
c = TreeNode.new(9)
d = TreeNode.new(20)
b = TreeNode.new(15, c, d)
e = TreeNode.new(7, a, b)

puts BSTIterator.new(e).has_next
