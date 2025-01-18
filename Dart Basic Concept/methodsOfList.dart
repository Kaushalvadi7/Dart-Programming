void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  
  // Add elements
  numbers.add(6);
  numbers.addAll([7, 8, 9]);

  // Remove elements
  numbers.remove(3);
  numbers.removeAt(0);

  // Update elements
  numbers[2] = 10;

  // Iterate through list
  for (var number in numbers) {
    print(number);
  }
}
