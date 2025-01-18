class cart<T> {
  List<T> items = [];

  void addItems(item) {
    items.add(item);
  }

  void showItem() {
    print("Items in your Cart:");
    for (var item in items) {
      print(item);
    }
  }
}

void main() {
  cart<String> books = cart<String>();
  cart<int> booknumber = cart<int>();

  books.addItems(('book :Dart 1'));
  books.addItems(("Dart2"));
  books.showItem();

  booknumber.addItems(1);
  booknumber.addItems(2);
  booknumber.showItem();
}
