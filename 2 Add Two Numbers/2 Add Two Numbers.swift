func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
  var node1 = ListNode(0, l1)
  var node2 = ListNode(0, l2)
  var sumNode = ListNode()
  let sumFirst = sumNode
  var carry = 0
    
  while node1.next != nil || node2.next != nil {
    node1 = node1.next ?? ListNode()
    node2 = node2.next ?? ListNode()
    let s = node1.val + node2.val + carry
    carry = s/10
    sumNode.next = ListNode(s%10)
    sumNode = sumNode.next!
  }    
  if carry > 0 {
    sumNode.next = ListNode(1)
    sumNode = sumNode.next!
  }
  return sumFirst.next
}
