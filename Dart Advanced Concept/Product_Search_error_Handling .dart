import 'dart:io';

class ProductSearchSystem {
  // Simulating a product database with a list of products
  List<String> products = [
    'Laptop',
    'Smartphone',
    'Headphones',
    'Tablet',
    'Smartwatch'
  ];

  // Method to search for a product by name
  void searchProduct(String productName) {
    try {
      if (productName.isEmpty) {
        throw Exception('Search query cannot be empty.');
      }

      // Simulate a case where the product is not found
      if (!products.contains(productName)) {
        throw Exception('Product "$productName" not found.');
      }

      // If no error, display the product
      print('Product "$productName" is available.');
    } catch (e) {
      print('Error: $e'); // Displaying the error message
    } finally {
      print('Search operation completed.');
    }
  }

  void displayProducts() {
    print('Available products:');
    for (var product in products) {
      print('- $product');
    }
  }

  // Method to handle the main menu options
  void showMenu() {
    print('\n--- GADGET_MART Product Search ---');
    print('1. View all available products');
    print('2. Search for a product');
    print('3. Exit');
  }

  // Method to handle user input and navigation
  void handleUserInput() {
    bool continueRunning = true;

    while (continueRunning) {
      showMenu();
      stdout.write('Enter your choice : ');
      String? choice = stdin.readLineSync();

      switch (choice) {
        case '1':
          displayProducts(); // Show all products
          break;
        case '2':
          stdout.write('Enter a product name to search: ');
          String? productName = stdin.readLineSync();
          if (productName != null && productName.isNotEmpty) {
            searchProduct(productName.trim());
          } else {
            print('Error: Please enter a valid product name.');
          }
          break;
        case '3':
          print('Exiting the system. Goodbye!');
          continueRunning = false;
          break;
        default:
          print('Invalid choice. Please select a valid option.');
      }
    }
  }
}

void main() {
  var searchSystem = ProductSearchSystem();
  searchSystem.handleUserInput();
}
