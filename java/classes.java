// Classes and OOP in Java

abstract class Animal {
    protected String name;
    
    public Animal(String name) {
        this.name = name;
    }
    
    public abstract void speak();
}

class Dog extends Animal {
    public Dog(String name) {
        super(name);
    }
    
    @Override
    public void speak() {
        System.out.println(name + " says woof!");
    }
}

class Cat extends Animal {
    public Cat(String name) {
        super(name);
    }
    
    @Override
    public void speak() {
        System.out.println(name + " says meow!");
    }
}

public class Classes {
    public static void main(String[] args) {
        Dog dog = new Dog("Rex");
        Cat cat = new Cat("Whiskers");
        
        dog.speak();  // Rex says woof!
        cat.speak();   // Whiskers says meow!
    }
}
