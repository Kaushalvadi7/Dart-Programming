import 'dart:io'; // Importing library for input and output

// Create a class to represent a Student
class Student {
  String name; // Student's name
  String rollNumber; // Student's roll number
  int marks; // Student's total marks
  int totalMarks; // Maximum marks

  // Constructor to initialize the student
  Student(this.name, this.rollNumber, this.marks, this.totalMarks);

  // Method to calculate the grade
  String calculateGrade() {
    double percentage = (marks / totalMarks) * 100;
    if (percentage >= 90) return 'A';
    if (percentage >= 80) return 'B';
    if (percentage >= 70) return 'C';
    if (percentage >= 60) return 'D';
    return 'F';
  }
}

// List to store students
List<Student> students = [];

// Function to display the menu
void showMenu() {
  print("\nStudent Result Management");
  print("1. Add Student");
  print("2. View All Students");
  print("3. Search Student");
  print("4. Exit");
  print("Enter your choice: ");
}

// Function to add a student
void addStudent() {
  print("Enter student's name: ");
  String name = stdin.readLineSync()!;
  print("Enter roll number: ");
  String rollNumber = stdin.readLineSync()!;
  print("Enter marks obtained: ");
  int marks = int.parse(stdin.readLineSync()!);
  print("Enter total marks: ");
  int totalMarks = int.parse(stdin.readLineSync()!);

  // Create a new student and add to the list
  students.add(Student(name, rollNumber, marks, totalMarks));
  print("Student added successfully!");
}

// Function to view all students
void viewAllStudents() {
  if (students.isEmpty) {
    print("No students found.");
    return;
  }

  print("\nList of Students:");
  for (var student in students) {
    print(
        "Name: ${student.name}, Roll No: ${student.rollNumber}, Marks: ${student.marks}/${student.totalMarks}, Grade: ${student.calculateGrade()}");
  }
}

// Function to search for a student
void searchStudent() {
  print("Enter roll number to search: ");
  String rollNumber = stdin.readLineSync()!;

  // Search for the student
  var student = students.firstWhere(
    (s) => s.rollNumber == rollNumber,
    orElse: () => Student("Not Found", "N/A", 0, 100), // Default Student object
  );

  if (student.name == "Not Found") {
    print("Student not found.");
  } else {
    print(
        "Name: ${student.name}, Marks: ${student.marks}/${student.totalMarks}, Grade: ${student.calculateGrade()}");
  }
}

// Main function
void main() {
  while (true) {
    showMenu();
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      addStudent();
    } else if (choice == 2) {
      viewAllStudents();
    } else if (choice == 3) {
      searchStudent();
    } else if (choice == 4) {
      print("Exiting... Goodbye!");
      break;
    } else {
      print("Invalid choice. Please try again.");
    }
  }
}
