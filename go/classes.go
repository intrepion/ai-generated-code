// Structs and Interfaces in Go (no classes, but equivalent)

package main

import "fmt"

type Animal interface {
	Speak() string
}

type Dog struct {
	Name string
}

func (d *Dog) Speak() string {
	return d.Name + " says woof!"
}

type Cat struct {
	Name string
}

func (c *Cat) Speak() string {
	return c.Name + " says meow!"
}

func main() {
	dog := &Dog{Name: "Rex"}
	cat := &Cat{Name: "Whiskers"}
	
	fmt.Println(dog.Speak()) // Rex says woof!
	fmt.Println(cat.Speak())  // Whiskers says meow!
	
	// Polymorphism
	var animals []Animal = []Animal{dog, cat}
	for _, a := range animals {
		fmt.Println(a.Speak())
	}
}
