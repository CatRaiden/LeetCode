func isMatch(_ s: String, _ p: String) -> Bool {
    if s.count == 0 && p.count == 0 {return true}
    let sAry = Array(s)
    let pAry = Array(p)
    var result = [[Bool]](Array (repeating: Array(repeating: false, count: p.count+1), count: s.count+1))
    result[0][0] = true
    for i in 0..<pAry.count {
        if pAry[i] == "*" {
            result[0][i+1] = result[0][i-1]
        }
    }
    
    for i in 0..<s.count {
        for j in 0..<p.count {
            if pAry[j] != "*" {
                if result[i][j] {
                    if pAry[j] == sAry[i] || pAry[j] == "." {
                        result[i+1][j+1] = true
                    }
                }
            } else {
                if result[i+1][j-1] {
                    result[i+1][j+1] = true
                } else if result[i][j-1] || result[i][j+1] {
                    if pAry[j-1] == sAry[i] || pAry[j-1] == "." {
                        result[i+1][j+1] = true
                    }
                }
            }
            
        }
    }
    return result[s.count][p.count]
}
