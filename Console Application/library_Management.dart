import 'dart:io'; // This imports the IO (input/output) library to take user input and show output.

class Book {
  String title;
  String author;
  String isbn;

  Book(this.title, this.author, this.isbn);
}

class Library {
  List<Book> books = []; // List to store books in the library
  void addBook(Book book) {
    books.add(book);
    print("Book '${book.title}' added to the library!");
  }

  void viewBooks() {
    if (books.isEmpty) {
      print("No books in the library.");
    } else {
      print("\nList of Books:");
      for (var book in books) {
        print(
            "Title: ${book.title}, Author: ${book.author}, ISBN: ${book.isbn}");
      }
    }
  }

  void searchBook(String title) {
    bool found = false;
    for (var book in books) {
      if (book.title.toLowerCase().contains(title.toLowerCase())) {
        print(
            "Title: ${book.title}, Author: ${book.author}, ISBN: ${book.isbn}");
        found = true;
      }
    }
    if (!found) {
      print("No book found with the title '$title'.");
    }
  }
}

void main() {
  var library = Library(); // Create an object of Library class

  while (true) {
    print("\nLibrary Management System");
    print("1. Add Book");
    print("2. View Books");
    print("3. Search Book");
    print("4. Exit");
    stdout.write("Enter your choice: ");
    var choice = stdin.readLineSync(); // Take user input

    if (choice == '1') {
      stdout.write("Enter book title: ");
      String title = stdin.readLineSync()!;
      stdout.write("Enter author name: ");
      String author = stdin.readLineSync()!;
      stdout.write("Enter ISBN number: ");
      String isbn = stdin.readLineSync()!;

      var book = Book(title, author, isbn); // Create a book object
      library.addBook(book); // Add the book to the library
    } else if (choice == '2') {
      library.viewBooks(); // View all books in the library
    } else if (choice == '3') {
      stdout.write("Enter the title to search: ");
      String searchTitle = stdin.readLineSync()!;
      library.searchBook(searchTitle); // Search for a book by title
    } else if (choice == '4') {
      print("Exiting...");
      break; // Exit the loop and the program
    } else {
      print("Invalid choice! Please try again.");
    }
  }
}
