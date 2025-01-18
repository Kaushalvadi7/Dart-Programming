class BankAccount {
  // Private field
  double _balance;

  // Constructor to initialize the balance
  BankAccount(this._balance);

  // Getter to view the balance
  double get balance => _balance;

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited: \$${amount.toStringAsFixed(2)}');
    } else {
      print('Invalid deposit amount.');
    }
  }
}

void main() {
  // Create a new bank account
  var account = BankAccount(1000.0);

  // Access balance using getter
  print('Initial Balance: \₹${account.balance.toStringAsFixed(2)}');

  // Deposit money
  account.deposit(500.0);

  // Attempt invalid deposit
  account.deposit(-100.0);

  // View final balance
  print('Final Balance: \₹${account.balance.toStringAsFixed(2)}');
}
