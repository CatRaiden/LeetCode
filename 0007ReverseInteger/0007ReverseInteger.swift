func reverse(_ x: Int) -> Int {
    let i = x > 0 ? 1 : -1
    let t = Int(String(String(abs(x)).reversed())) ?? 0
    if t >= Int32.max-1 || t <= Int32.min {
        return 0
    }
    return t*i
}
