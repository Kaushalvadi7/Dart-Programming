void main() {
  int marks = 85;

  // if-else statement
  if (marks >= 90) {
    print('Grade: A');
  } else if (marks >= 75) {
    print('Grade: B');
  } else {
    print('Grade: C');
  }

  // switch-case statement
  String grade = 'A';
  switch (grade) {
    case 'A':
      print('Excellent');
      break;
    case 'B':
      print('Good');
      break;
    default:
      print('Average');
  }

  // Ternary operator
  String result = marks >= 50 ? 'Pass' : 'Fail';
  print('Result: $result');
}
