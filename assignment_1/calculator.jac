"""An Interactive Calculator (class style)"""

class Calculator {
    def init(self: Calculator) {
        self.running = True;
        self.a = 0;
        self.b = 0;
        self.op = "";
    }

    def run(self: Calculator) {
        while self.running {
            a_str = input("Enter first number (or type 'exit' to quit): ");
            if a_str == "exit" {
                print("Goodbye!");
                self.running = False;
                break;
            }

            b_str = input("Enter second number (or type 'exit' to quit): ");
            if b_str == "exit" {
                print("Goodbye!");
                self.running = False;
                break;
            }

            op = input("Enter operation (add, sub, mul, div): ");

            if not (a_str.isdigit() and b_str.isdigit()) {
                print("Invalid input. Please enter whole numbers only.");
                continue;
            } else {
                self.a = int(a_str);
                self.b = int(b_str);
            }

            self.op = op;
            self.calculate();
        }
    }

    def calculate(self: Calculator) {
        if self.op == "add" {
            result = self.a + self.b;
            print(f"{self.a} + {self.b} = {result}");
        } elif self.op == "sub" {
            result = self.a - self.b;
            print(f"{self.a} - {self.b} = {result}");
        } elif self.op == "mul" {
            result = self.a * self.b;
            print(f"{self.a} * {self.b} = {result}");
        } elif self.op == "div" {
            if self.b != 0 {
                result = self.a / self.b;
                print(f"{self.a} / {self.b} = {result}");
            } else {
                print("Error: Division by zero!");
            }
        } else {
            print("Unknown operation!");
        }
    }
}

with entry {
    calc = Calculator();
    calc.run();
}
