import 'user.dart';
import 'crm.dart';
import 'customer.dart';

// New method to delete a customer
void deleteCustomer(User user, Customer customer, CRM myCRM) {
  // You can add additional logic here, such as checking if the user has permission to delete customers
  if (user != null) {
    myCRM.customerList.remove(customer);
    print("Customer deleted successfully!");
  } else {
    print("User not authenticated. Cannot delete customer.");
  }
}
