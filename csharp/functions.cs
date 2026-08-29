// Functions and Closures in C# (lambdas)

using System;
using System.Linq;

class Program {
    static void Main() {
        // Lambda function
        Func<string, string> greet = name => $"Hello, {name}!";
        
        Console.WriteLine(greet("World"));  // Hello, World!
        
        // LINQ query
        var numbers = new[] { 1, 2, 3, 4, 5 };
        var squares = numbers.Select(n => n * n);
        Console.WriteLine(string.Join(", ", squares));  // 1, 4, 9, 16, 25
        
        // Closure example
        Action makeCounter = () => {
            int count = 0;
            for (int i = 0; i < 3; i++) {
                Console.WriteLine(++count);
            }
        };
        makeCounter();
    }
}
