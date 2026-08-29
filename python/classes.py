# Classes and OOP in Python

class Animal:
    """Base class for animals."""
    
    def __init__(self, name):
        self.name = name
    
    def speak(self):
        raise NotImplementedError("Subclasses must implement speak()")

class Dog(Animal):
    """A dog that barks."""
    
    def speak(self):
        return f"{self.name} says woof!"

class Cat(Animal):
    """A cat that meows."""
    
    def speak(self):
        return f"{self.name} says meow!"

# Usage
dog = Dog("Rex")
cat = Cat("Whiskers")
print(dog.speak())  # Rex says woof!
print(cat.speak())   # Whiskers says meow!
