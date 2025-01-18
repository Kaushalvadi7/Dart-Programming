import 'dart:async';
import 'dart:core';

Stream<int> countStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1)); // Simulating delay
    yield i; // Emit a value
  }
}

void main() {
  print("Program started");
  countStream().listen((int i) {
    print(i); // Prints 1 to 5 with a delay of 1 second each
  });

  print("doing other things");
  for (int i = 1; i <= 5; i++) {
    print("task $i completed"); // Prints 1 to 5 with a delay of 1 second each
  }
}
