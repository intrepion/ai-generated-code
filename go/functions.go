// Functions and Closures in Go

package main

import "fmt"

func factorial(n int) int {
	if n <= 1 {
		return 1
	}
	return n * factorial(n-1)
}

func main() {
	// Closure example
	count := 0
	increment := func() int {
		count++
		return count
	}
	
	fmt.Println(increment()) // 1
	fmt.Println(increment()) // 2
	fmt.Println(increment()) // 3
	
	// Higher-order function
	sum := func(nums ...int) int {
		total := 0
		for _, n := range nums {
			total += n
		}
		return total
	}
	
	fmt.Println(sum(1, 2, 3, 4, 5)) // 15
}
