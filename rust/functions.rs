// Functions and Closures in Rust

fn factorial(n: u64) -> u64 {
    if n <= 1 { return 1; }
    n * factorial(n - 1)
}

struct Greeter {
    name: String,
}

impl Greeter {
    fn new(name: &str) -> Self {
        Greeter { name: name.to_string() }
    }
    
    fn greet(&self) -> String {
        format!("Hello, {}!", self.name)
    }
}

let g = Greeter::new("Rust");
println!("{}", g.greet()); // Hello, Rust!
