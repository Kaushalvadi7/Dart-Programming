import 'dart:async';

Future<void> fetchData() async {
  print("Processing ...");

  await Future.delayed(Duration(seconds: 5));
  print("Data fetched successfully");
}

void main() {
  print("Start Fetching data ...");
  fetchData();
  print("still fetching data ...");
}
