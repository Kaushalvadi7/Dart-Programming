// Storage Box - Generic

class box<T> {
  T _item; // Here T can be any type of data  either Int or String
  box(this._item);

  T getItem() {
    return _item;
  }
}

void main() {
  var numberBox = box<int>(84); // item is integer type
  print(numberBox.getItem());

  var stringBox = box<String>("Kaushal"); // item is String type
  print(stringBox.getItem());
}
