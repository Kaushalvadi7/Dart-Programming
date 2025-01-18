// Function with positional parameters
int addNumbers(int a, int b) => a + b;

// Function with named parameters
int calculateArea({required int length, required int width}) => length * width;

// Function with optional parameters
int multiplyNumbers(int a, [int b = 1]) => a * b;

void main() {
  print('Sum: ${addNumbers(5, 10)}');
  print('Area: ${calculateArea(length: 5, width: 10)}');
  print('Multiplication: ${multiplyNumbers(5)}');
}
