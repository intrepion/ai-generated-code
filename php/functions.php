<?php
// Functions and Closures in PHP

function factorial($n) {
    return $n <= 1 ? 1 : $n * factorial($n - 1);
}

class Greeter {
    public $name;
    
    public function __construct($name) {
        $this->name = $name;
    }
    
    public function greet() {
        return "Hello, {$this->name}!";
    }
}

$g = new Greeter("PHP");
echo $g->greet(); // Hello, PHP!
?>
