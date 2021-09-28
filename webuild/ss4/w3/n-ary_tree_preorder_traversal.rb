# https://leetcode.com/problems/n-ary-tree-preorder-traversal/

class Node
  attr_accessor :val, :children

  def initialize(val)
    @val = val
    @children = []
  end
end

# @param {Node} root
# @return {List[int]}
def preorder(root)
  result = []
  stack = []
  stack.push(root)
  until stack.empty?
    node = stack.pop
    break if node.nil?

    result << node.val
    node.children.reverse.each { |n| stack.push(n) }
  end
  result
end

# [2,6,14,11,7,3,12,8,4,13,9,10,5,1]
# [14,11,12,13,6,7,8,9,10,2,3,4,5,1]

a = Node.new(5)
b = Node.new(6)
c = Node.new(3)
c.children = [a, b]
d = Node.new(2)
e = Node.new(4)
root = Node.new(1)
root.children = [c, d, e]

puts preorder(root)
