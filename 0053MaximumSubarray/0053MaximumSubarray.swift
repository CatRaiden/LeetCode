func maxSubArray(_ nums: [Int]) -> Int {
    var ans = -10000
    var temp = 0
    for num in nums {
        temp += num
        ans = max(temp, ans)
        if temp < 0 {temp = 0}
    }
    return ans
}
