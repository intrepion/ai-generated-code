# Functions and Closures in Ruby

def factorial(n)
  n <= 1 ? 1 : n * factorial(n - 1)
end

class Greeter
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
  
  def greet
    "Hello, #{@name}!"
  end
end

g = Greeter.new("Ruby")
puts g.greet # Hello, Ruby!
