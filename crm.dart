import 'user.dart';
import 'customer.dart';

class CRM {
  List<Customer> customerList = [];

  void addCustomer(User loggedInUser, String name, String email,
      String phoneNumber, String country) {
    if (loggedInUser.name.isNotEmpty) {
      Customer newCustomer = Customer(name, email, phoneNumber, country);
      customerList.add(newCustomer);
      print("Customer added successfully!");
    } else {
      print("Permission denied. You must be logged in to add a customer.");
    }
  }

  void displayCustomers() {
    print("Customer List:");
    for (var customer in customerList) {
      print(
          "Name: ${customer.name}, Email: ${customer.email}, Phone: ${customer.phoneNumber}, Country: ${customer.country}");
    }
  }
}
