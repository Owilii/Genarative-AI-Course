"""Interactive Calculator — strict input validation"""

class Calculator {
    def init(self: Calculator) {
        self.running = True;
        self.a = 0;
        self.b = 0;
        self.op = "";
    }

    # Returns True if s is a whole integer (allows an optional leading + or -)
    def is_int(self: Calculator, s: str) {
        s2 = s.strip();
        if s2 == "" {
            return False;
        }
        first = s2[0];
        if first == "+" or first == "-" {
            rest = s2[1:];
            if rest == "" {
                return False;
            }
            return rest.isdigit();
        } else {
            return s2.isdigit();
        }
    }

    def run(self: Calculator) {
        while self.running {
            # FIRST NUMBER
            a_str = input("Enter first number (or type 'exit' to quit): ");
            a_trim = a_str.strip();
            a_low = a_trim.lower();
            if a_low == "exit" or a_low == "quit" or a_low == "q" {
                print("Goodbye!");
                self.running = False;
                break;
            }
            if not self.is_int(a_trim) {
                print("❌ Invalid input! Please enter a whole number (e.g., 12 or -3).");
                continue;
            }

            # SECOND NUMBER
            b_str = input("Enter second number (or type 'exit' to quit): ");
            b_trim = b_str.strip();
            b_low = b_trim.lower();
            if b_low == "exit" or b_low == "quit" or b_low == "q" {
                print("Goodbye!");
                self.running = False;
                break;
            }
            if not self.is_int(b_trim) {
                print(" Invalid input! Please enter a whole number (e.g., 5).");
                continue;
            }

            # PARSE NUMBERS
            self.a = int(a_trim);
            self.b = int(b_trim);

            # OPERATION
            op = input("Enter operation (add, sub, mul, div): ");
            op_trim = op.strip().lower();
            if op_trim == "exit" or op_trim == "quit" or op_trim == "q" {
                print("Goodbye!");
                self.running = False;
                break;
            }
            if not (op_trim == "add" or op_trim == "sub" or op_trim == "mul" or op_trim == "div") {
                print(" Unknown operation! Use: add, sub, mul, div.");
                continue;
            }

            self.op = op_trim;
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
                print(" Error: Division by zero!");
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
