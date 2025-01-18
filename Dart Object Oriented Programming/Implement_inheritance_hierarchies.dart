class User {
  String name;
  String userId;

  User(this.name, this.userId);

  void displayUserDetails() {
    print("User Name: $name, User ID: $userId");
  }
}

class Admin extends User {
  Admin(String name, String userId) : super(name, userId);

  void addBook(Library library, Book book) {
    library.addBook(book);
    print("Admin $name added the book '${book.title}'.");
  }
}

class Member extends User {
  Member(String name, String userId) : super(name, userId);

  void viewBooks(Library library) {
    library.viewBooks();
  }
}

class Book {
  String title;
  String author;

  Book(this.title, this.author);
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  void viewBooks() {
    if (books.isEmpty) {
      print("No books in the library.");
    } else {
      print("Library Books:");
      for (var book in books) {
        print("Title: ${book.title}, Author: ${book.author}");
      }
    }
  }
}

void main() {
  var library = Library();

  // Create Users
  var admin = Admin("Alice", "A001");
  var member = Member("Bob", "M001");

  // Admin adds books
  admin.addBook(library, Book("Dart Programming", "John Doe"));
  admin.addBook(library, Book("Flutter Basics", "Jane Smith"));

  // Member views books
  print("\nMember Views Library:");
  member.viewBooks(library);

  // Display User Details
  print("\nUser Details:");
  admin.displayUserDetails();
  member.displayUserDetails();
}
