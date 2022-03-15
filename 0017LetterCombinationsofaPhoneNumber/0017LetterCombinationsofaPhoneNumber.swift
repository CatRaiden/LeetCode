func letterCombinations(_ digits: String) -> [String] {
    let strAry = ["", "", "abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"]
    let count = digits.count
    let dgs = Array(digits)
    var ans: [String] = []
    if count < 1 {return []}
    guard let first = Int(String(dgs[0])) else {return []}
    for one in strAry[first] {
        if count > 1 {
            guard let second = Int(String(dgs[1])) else {return []}
            for two in strAry[second] {
                if count > 2 {
                    guard let third = Int(String(dgs[2])) else {return []}
                    for three in strAry[third] {
                        if count > 3 {
                            guard let forth = Int(String(dgs[3])) else {return []}
                            for four in strAry[forth] {
                                ans.append(String(one) + String(two) + String(three) + String(four))
                            }
                        } else {
                            ans.append(String(one) + String(two) + String(three))
                        }
                    }
                } else {
                    ans.append(String(one) + String(two))
                }
            }
        } else {
            ans.append(String(one))
        }
    }
    return ans
}
