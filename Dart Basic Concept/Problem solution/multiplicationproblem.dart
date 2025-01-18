void main() {
  int num = 5;

  for (int i = 1; i <= 10; i++) {
    print('$num x $i = ${num * i}');
  }

  // Nested loops for multiple tables
  for (int table = 1; table <= 3; table++) {
    print('Multiplication Table for $table:');
    for (int i = 1; i <= 10; i++) {
      print('$table x $i = ${table * i}');
    }
    print('---');
  }
}
