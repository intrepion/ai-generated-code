// Classes and OOP in C#

using System;

abstract class Animal {
    protected string name;
    
    public Animal(string name) {
        this.name = name;
    }
    
    public abstract void Speak();
}

class Dog : Animal {
    public Dog(string name) : base(name) {}
    
    public override void Speak() {
        Console.WriteLine($"{name} says woof!");
    }
}

class Cat : Animal {
    public Cat(string name) : base(name) {}
    
    public override void Speak() {
        Console.WriteLine($"{name} says meow!");
    }
}

class Program {
    static void Main() {
        Dog dog = new Dog("Rex");
        Cat cat = new Cat("Whiskers");
        
        dog.Speak();  // Rex says woof!
        cat.Speak();   // Whiskers says meow!
    }
}
