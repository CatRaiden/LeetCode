func maxArea(_ height: [Int]) -> Int {
    var l = 0
    var r = height.count - 1
    var ans = 0
    while l < r {
        if height[l] < height[r] {
            ans = max(ans, (r-l)*height[l])
            l+=1
        } else {
            ans = max(ans, (r-l)*height[r])
            r-=1
        }
    }
    return ans
}
