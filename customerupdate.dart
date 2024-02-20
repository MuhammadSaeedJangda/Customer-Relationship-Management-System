import 'dart:io';
import 'crm.dart';
import 'customer.dart';
import 'user.dart';

void updateCustomerDetails(User loggedInUser, CRM myCRM) {
  // You can implement the logic for updating customer details here
  // For example, ask for the customer's email and the details you want to update
  print("Enter customer's email for updating details: ");
  String customerEmailToUpdate = stdin.readLineSync()!;

  // Find the customer in the CRM based on the email
  Customer? customerToUpdate;
  try {
    customerToUpdate = myCRM.customerList.firstWhere(
      (customer) => customer.email == customerEmailToUpdate,
    );
  } catch (e) {
    // Customer not found
    customerToUpdate = null;
  }

  if (customerToUpdate != null) {
    // Update the customer Name details
    print("Enter updated Name: ");
    String updatedName = stdin.readLineSync()!;
    customerToUpdate.phoneNumber = updatedName;

    // Update the customer Email details
    print("Enter updated Email: ");
    String updatedEmail = stdin.readLineSync()!;
    customerToUpdate.phoneNumber = updatedEmail;

    // Update the customer Phone Number details
    print("Enter updated Phone Number: ");
    String updatedPhoneNumber = stdin.readLineSync()!;
    customerToUpdate.phoneNumber = updatedPhoneNumber;

    print("Customer details updated successfully!");
  } else {
    print("Customer with email $customerEmailToUpdate not found.");
  }
}
