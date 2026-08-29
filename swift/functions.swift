// Functions and Closures in Swift

func factorial(_ n: Int) -> Int {
    return n <= 1 ? 1 : n * factorial(n - 1)
}

class Greeter {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func greet() -> String {
        return "Hello, \(name)!"
    }
}

let g = Greeter(name: "Swift")
print(g.greet()) // Hello, Swift!
