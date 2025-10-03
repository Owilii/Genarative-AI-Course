# Interactive Calculator

## About the Project
This project is a **command-line interactive calculator** that emphasizes **strict input validation**.  
It ensures that users only enter valid whole integers (with optional `+` or `-` signs) and restricts operations to a defined set: addition, subtraction, multiplication, and division.  

The program runs in a loop, allowing multiple calculations until the user exits.

## Features
- Strict input validation for whole numbers (no floats, no invalid strings).  
- Safe exit commands: `exit`, `quit`, or `q`.  
- Supported operations:  
  - `add` → Addition  
  - `sub` → Subtraction  
  - `mul` → Multiplication  
  - `div` → Division (with division-by-zero protection).  
- Clean and user-friendly error messages.  

## How It Works
1. Prompts the user for the **first number**.  
2. Prompts for the **second number**.  
3. Prompts for the **operation** (`add`, `sub`, `mul`, `div`).  
4. Executes the calculation and prints the result.  
5. Repeats until the user types an exit command.  


