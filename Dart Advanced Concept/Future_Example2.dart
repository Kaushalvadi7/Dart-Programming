Future<void> longRunningTask() async {
  print("Long-running task started...");
  await Future.delayed(Duration(seconds: 5));
  print("Long-running task completed!");
}

void main() {
  print("Program started!");
  longRunningTask();

  for (int i = 1; i <= 3; i++) {
    print("Performing other task $i...");
  }

  print("Program is still responsive while waiting for the long task.");
}
