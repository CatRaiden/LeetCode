func convert(_ s: String, _ numRows: Int) -> String {
    if s.count <= numRows {return s}
    if numRows < 2 {return s}
    
    let strAry = Array(s)
    let n = 2*numRows - 2
    var sAry: [String] = []
    var ans = ""
    
    for _ in 0...numRows {
        sAry.append("")
    }
    
    for (i, char) in strAry.enumerated() {
        let mod = i%n
        if mod < numRows {
            sAry[mod] = sAry[mod] + String(char)
        } else {
            let c = n - mod
            sAry[c] = sAry[c] + String(char)
        }
    }
    
    for c in sAry {
        ans.append(c)
    }
    return ans
}
