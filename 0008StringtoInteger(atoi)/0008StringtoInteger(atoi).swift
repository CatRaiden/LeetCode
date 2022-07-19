func myAtoi(_ s: String) -> Int {
    var sign = 1
    var numStr = ""
    let firstChar = s.trimmingCharacters(in: .whitespaces)
    if firstChar.first == "-" || firstChar.first == "+" {
        sign = firstChar.first == "-" ? -1 : 1
        numStr = String(firstChar.dropFirst())
    } else {
        numStr = firstChar
    }
    var ans = 0
    for char in numStr {
        if char.isNumber {
            ans = ans*10 + (Int(String(char)) ?? 0)
            if ans > Int(Int32.max) { break }
        } else {
            break
        }
    }
    let sum = sign*ans
    if sum > Int32.max { return Int(Int32.max) }
    if sum < Int32.min { return Int(Int32.min) }
    return sum
}
