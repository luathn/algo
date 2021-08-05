# https://leetcode.com/problems/linked-list-cycle

class ListNode
  attr_accessor :val, :next

  def initialize(val)
    @val = val
    @next = nil
  end
end

# Space complexity O(n)
# def hasCycle(head)
#   hash = {}
#   node = head
#   until node.nil?
#     return true if hash.include?(node)

#     hash[node] = true
#     node = node.next
#   end
#   false
# end

# Space complexity O(1)
def hasCycle(head)
  hare = tortoise = head
  while hare
    hare = hare&.next&.next
    return true if hare == tortoise

    tortoise = tortoise.next
  end
  false
end

# 100 1 -> 2 -> 3 -> 2 -|
#  ^____________________|
out = ListNode.new(100)
a = ListNode.new(1)
b = ListNode.new(2)
c = ListNode.new(3)
d = ListNode.new(2)
a.next = b
b.next = c
c.next = d
d.next = out
puts hasCycle(a)

# 1 -> 2 -> 3 -> 4 -|
#      ^____________|
a = ListNode.new(1)
b = ListNode.new(2)
c = ListNode.new(3)
d = ListNode.new(4)
a.next = b
b.next = c
c.next = d
d.next = b
puts hasCycle(a)
