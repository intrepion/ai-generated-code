// Classes in JavaScript (ES6)

class Animal {
    constructor(name) {
        this.name = name;
    }
    
    speak() {
        throw new Error("Subclasses must implement speak()");
    }
}

class Dog extends Animal {
    speak() {
        return `${this.name} says woof!`;
    }
}

class Cat extends Animal {
    speak() {
        return `${this.name} says meow!`;
    }
}

// Usage
const dog = new Dog("Rex");
const cat = new Cat("Whiskers");
console.log(dog.speak()); // Rex says woof!
console.log(cat.speak());  // Whiskers says meow!
