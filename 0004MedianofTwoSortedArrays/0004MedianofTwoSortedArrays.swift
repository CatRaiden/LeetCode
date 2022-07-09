func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
  var a = nums1 + nums2
  a.sort()
  var aaa = a.count
  if aaa%2 == 0 {
    return Double(a[aaa/2-1]+a[aaa/2])/2
  } else {
    return Double(a[aaa/2])
  }
}
