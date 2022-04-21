func lengthOfLongestSubstring(_ s: String) -> Int {
    var dict = [Character:Int]()
    var ans = 0
    var left = -1
    
    for (right, char) in s.enumerated() {
        left = max(left, dict[char] ?? -1)
        ans = max(ans, right - left)
        dict[char] = right
    }
    
    return ans
}
