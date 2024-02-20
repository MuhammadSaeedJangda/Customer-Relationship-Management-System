import 'user.dart';

class Login {
  List<User> userList;

  Login(this.userList);

  User? loginUser(String email, String password) {
    for (var user in userList) {
      if (user.email == email && user.password == password) {
        print("Login successful! Welcome, ${user.name}!");
        return user;
      }
    }
    print("Invalid email or password. Login failed.");
    return null; // Return null if login fails
  }
}
