import 'dart:io';
import 'customer.dart';
import 'registration.dart';
import 'login.dart';
import 'crm.dart';
import 'user.dart';
import 'customerupdate.dart';
import 'customerdelete.dart';

User? loggedInUser;
CRM myCRM = CRM();

void main() {
  print("WELCOME TO CUSTOMER RELATIONSHIP MANAGEMENT SYSTEM");
  Registration registration = Registration();
  Login login = Login(registration.userList);

  print("---------------------------------------------------");

  // For User Registration
  print("---------- KINDLY REGISTER YOURSELF FIRST ---------");
  stdout.write("Enter Your Name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter Your Email: ");
  String email = stdin.readLineSync()!;

  stdout.write("Enter Your Password: ");
  String password = stdin.readLineSync()!;

  registration.registerUser(name, email, password);
  print("------------- THANKS FOR REGISTRATION -------------");

  // For User login
  print("------------ KINDLY LOGIN YOURSELF  ---------------");
  stdout.write("Enter your email for login: ");
  String loginEmail = stdin.readLineSync()!;

  stdout.write("Enter your password for login: ");
  String loginPassword = stdin.readLineSync()!;

  login.loginUser(loginEmail, loginPassword);
  loggedInUser = login.loginUser(loginEmail, loginPassword);
  print("------------- THANKS FOR LOGIN -------------");

  // Call functions here as needed
  addNewCustomer(loggedInUser, myCRM);
  updateFunction(loggedInUser, myCRM);
}

// If the user is logged in, allow adding a new customer
void addNewCustomer(User? loggedInUser, CRM myCRM) {
  if (loggedInUser != null && loggedInUser.name.isNotEmpty) {
    print("--------- Enter customer details: ---------");
    print("Name: ");
    String customerName = stdin.readLineSync()!;

    print("Email: ");
    String customerEmail = stdin.readLineSync()!;

    print("Phone Number: ");
    String customerPhoneNumber = stdin.readLineSync()!;

    print("Country: ");
    String customerCountry = stdin.readLineSync()!;

    // Add the new customer
    myCRM.addCustomer(loggedInUser, customerName, customerEmail,
        customerPhoneNumber, customerCountry);

    // Display customers
    print("--------- Customer Display Section ---------");
    myCRM.displayCustomers();
  } else {
    print("Login failed. Please check your email and password.");
  }
}

// Ask if the user wants to update customer details
void updateFunction(User? loggedInUser, CRM myCRM) {
  print("Do you want to update customer details? (yes/no)");
  String updateOption = stdin.readLineSync()!.toLowerCase();

  if (updateOption == 'yes') {
    // Run the update function
    updateCustomerDetails(loggedInUser!, myCRM);
  } else {
    print("Login failed. Please check your email and password.");
  }
  print("------------------------------------------------------");
}

// New method to delete a customer
void deleteCustomer(User? user, Customer customer) {
  // Checking Answer Of User & Then Run The Function
  if (user != null) {
    myCRM.customerList.remove(customer);
    print("Customer deleted successfully!");
  } else {
    print("User not authenticated. Cannot delete customer.");
  }
}
