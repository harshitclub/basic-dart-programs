import 'dart:io';

void main() {
  // Account creation
  print("Welcome to Dart Bank!");

  stdout.write("Enter your name: ");
  String? username = stdin.readLineSync();

  stdout.write("Enter your age: ");
  int? age = int.parse(stdin.readLineSync()!);

  double balance = 0.0;
  bool isRunning = true;

  // Show greeting
  print("\n Hello $username, your account has been created.");
  print("Your current balance is ₹$balance\n");

  // Operations Menu using loop
  while (isRunning) {
    print("💼 Select an operation:");
    print("1. Deposit Money");
    print("2. Withdraw Money");
    print("3. Check Balance");
    print("4. Exit");

    stdout.write("Enter your choice (1-4): ");
    int choice = int.parse(stdin.readLineSync()!);

    // Use switch case and operators
    switch (choice) {
      case 1:
        stdout.write("Enter amount to deposit: ₹");
        double depositAmount = double.parse(stdin.readLineSync()!);
        if (depositAmount > 0) {
          balance += depositAmount;
          print("✅ ₹$depositAmount deposited successfully!");
        } else {
          print("❌ Invalid deposit amount.");
        }
        break;
      case 2:
        stdout.write("Enter amount to withdraw: ₹");
        double withdrawAmount = double.parse(stdin.readLineSync()!);
        if (withdrawAmount > 0 && withdrawAmount <= balance) {
          balance -= withdrawAmount;
          print("✅ ₹$withdrawAmount withdrawn successfully!");
        } else if (withdrawAmount > balance) {
          print("❌ Insufficient funds!");
        } else {
          print("❌ Invalid withdrawal amount.");
        }
        break;
      case 3:
        print("Your current balance is: ₹${balance.toStringAsFixed(2)}");
        break;
      case 4:
        print("👋 Thank you, $username. Have a great day!");
        isRunning = false; // loop exit
        break;
      default:
        print("❌ Invalid choice. Please select 1-4.");
    }
    print(""); // empty line for readability
  }
}
