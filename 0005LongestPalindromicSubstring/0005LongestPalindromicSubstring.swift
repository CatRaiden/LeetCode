func longestPalindrome(_ s: String) -> String {
    
    guard s.count > 1 else { return s }
    
    let s = Array(s)
    var max = 0
    var currnt = 0
    var minLeft = 0
    var maxRight = 0
    var i = 0
    
    while i < s.count {
        var left = i
        var right = i
        
        while right + 1 < s.count && s[right + 1] == s[i] {
            right += 1
        }
        while left - 1 >= 0 && right + 1 < s.count && s[left - 1] == s[right + 1] {
            left -= 1
            right += 1
        }
        currnt = right - left + 1
        if currnt > max {
            max = currnt
            minLeft = left
            maxRight = right
        }
        i += 1
    }
    
    var result = ""
    for k in minLeft...maxRight {
        result += String(s[k])
    }
    
    return result
}
