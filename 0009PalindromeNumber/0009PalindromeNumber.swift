func isPalindrome(_ x: Int) -> Bool {
    var number = x
    var reverse = 0
    while number > 0 {
        let a = number%10
        reverse = reverse*10 + a
        number = number/10
    }
    return x == reverse
}
