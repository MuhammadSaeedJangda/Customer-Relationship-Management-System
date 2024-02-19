import 'user.dart';

class Login {
  List<User> userList;

  Login(this.userList);

  bool loginUser(String email, String password) {
    for (var user in userList) {
      if (user.email == email && user.password == password) {
        print("Login successful! Welcome, ${user.name}!");
        return true;
      }
    }
    print("Invalid email or password. Login failed.");
    return false;
  }
}
