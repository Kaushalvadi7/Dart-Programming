Stream<String> pizzaUpdates() async* {
  await Future.delayed(Duration(seconds: 3));
  yield "Order Recieved :)";
  await Future.delayed(Duration(seconds: 3));
  yield "Pizza is being Prepared :)";
  await Future.delayed(Duration(seconds: 3));
  yield "Out for Delivery :)";
  await Future.delayed(Duration(seconds: 3));
  yield "Pizza is Delivered !!";
}

// void main() async {
//   print("Waiting for Updates :(");
//   await for (String pizzaStatus in pizzaUpdates()) {
//     print(pizzaStatus);
//   }
// }

void main() {
  print("Waitig for Updates :(");
  pizzaUpdates().listen((update) {
    print(update);
  });
}
// In the above code snippet, we have a function pizzaUpdates that returns a Stream of String values. 
//The function uses the async* syntax to create a generator function that yields values asynchronously.
