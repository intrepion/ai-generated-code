# Functions and Closures in Python

def add(a, b):
    """Add two numbers."""
    return a + b

def factorial(n):
    """Calculate factorial of n."""
    if n <= 1:
        return 1
    return n * factorial(n - 1)

# Lambda function
square = lambda x: x ** 2

# Closure example
def make_counter():
    count = 0
    def increment():
        nonlocal count
        count += 1
        return count
    return increment

counter = make_counter()
print(counter())  # 1
print(counter())  # 2
print(counter())  # 3
