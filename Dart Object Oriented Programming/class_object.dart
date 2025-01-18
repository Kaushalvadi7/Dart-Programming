class Student {
  String name;
  int age;

  // Constructor
  Student(this.name, this.age);

  // Getter
  String get studentName => name;

  // Setter
  set studentAge(int value) {
    age = value;
  }

  // Method
  void displayInfo() {
    print('Name: $name, Age: $age');
  }
}

void main() {
  var student = Student('Kaushal', 20);
  student.displayInfo();

  // Using getter and setter
  print('Student Name: ${student.studentName}');
  student.studentAge = 22;
  student.displayInfo();
}
