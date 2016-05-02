func isprime(n: Int) -> Bool {
    if (n == 1 || n == 2) {return true}
    else {
        var prime = true
        for i in 2..<n {
            if (n % i == 0) {
                prime = false
                break
            }
        }
        return prime
    }
}

func primesupto(n: Int) -> [Int] {
    var primes = [1]
    if n >= 2 {
        primes.append(2)
    }
    if n >= 3 {
        for i in 3...n {
            if isprime(i) {primes.append(i)}
        }
    }
    return primes
}

primesupto(100)
