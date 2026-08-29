// Functions and Closures in JavaScript

function add(a, b) {
    return a + b;
}

const factorial = (n) => {
    if (n <= 1) return 1;
    return n * factorial(n - 1);
};

// Arrow function
const square = x => x ** 2;

// Closure example
function makeCounter() {
    let count = 0;
    return () => {
        count++;
        return count;
    };
}

const counter = makeCounter();
console.log(counter()); // 1
console.log(counter()); // 2
console.log(counter()); // 3
