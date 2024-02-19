import './user.dart';

class Registration {
  List<User> userList = [];

  //Function For Email Validation
  bool isValidEmail(String email) {
    return email.contains('@gmail.com') && email == email.toLowerCase();
  }

//Function For Password Validation
  bool isValidPassword(String password) {
    return password.length >= 8;
  }

  void registerUser(String name, String email, String password) {
    if (isValidEmail(email) && isValidPassword(password)) {
      User newUser = User(name, email, password);
      userList.add(newUser);
      print("Registration Successful For $name!");
    } else {
      print("Invalid Email Or Password. Registration Failed For $name!");
    }
  }
}
