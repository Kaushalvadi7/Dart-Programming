class Car {
  String? brand;
  int? year;

  // Default constructor
  Car() {
    brand = 'Unknown';
    year = 0;
  }

  // Parameterized constructor
  Car.parameterized(this.brand, this.year);

  // Named constructor
  Car.named({required this.brand, required this.year});

  void displayDetails() {
    print('Brand: $brand, Year: $year');
  }
}

void main() {
  var car1 = Car();
  car1.displayDetails();

  var car2 = Car.parameterized('Toyota', 2021);
  car2.displayDetails();

  var car3 = Car.named(brand: 'Honda', year: 2020);
  car3.displayDetails();
}
