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
    // Ask for the details to update
    print("Enter updated Phone Number: ");
    String updatedPhoneNumber = stdin.readLineSync()!;

    // Update the customer details
    customerToUpdate.phoneNumber = updatedPhoneNumber;

    print("Customer details updated successfully!");
  } else {
    print("Customer with email $customerEmailToUpdate not found.");
  }
}
