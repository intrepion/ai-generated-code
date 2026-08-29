// Functions and Closures in Kotlin

fun factorial(n: Int): Int {
    return if (n <= 1) 1 else n * factorial(n - 1)
}

class Greeter(val name: String) {
    fun greet(): String = "Hello, $name!"
}

val g = Greeter("Kotlin")
println(g.greet()) // Hello, Kotlin!
