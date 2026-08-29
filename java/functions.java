// Functions and Closures in Java (lambdas)

@FunctionalInterface
interface Greeting {
    String greet(String name);
}

public class Functions {
    
    public static void main(String[] args) {
        // Lambda function
        Greeting hello = name -> "Hello, " + name + "!";
        
        System.out.println(hello.greet("World"));  // Hello, World!
        
        // Method reference
        System.out.println(System.out::println);
    }
    
    public static int factorial(int n) {
        if (n <= 1) return 1;
        return n * factorial(n - 1);
    }
}
