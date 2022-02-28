func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
  var dict: [Int: Int] = [:]
  for i in 0...nums.count {
    let last = target - nums[i]
    if let j = dict[last], j != i {
      return [j,i]
    } else {
      dict[nums[i]] = i
    }
  }
  return []
}
