func countAndSay(_ n: Int) -> String {
    if n == 1 {return "1"}
    var result = "1"
    
    for _ in 1..<n {
        var temp = ""
        var count = 1
        let str = Array(result)
        for i in 0..<result.count {
            if i == str.count - 1 {
                temp.append("\(count)\(str[i])")
            } else {
                if str[i] == str[i+1] {
                    count += 1
                } else {
                    temp.append("\(count)\(str[i])")
                    count = 1
                }
            }
        }
        result = temp
    }
    return result
}
