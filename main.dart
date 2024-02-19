import 'dart:io';
import 'registration.dart';
import 'login.dart';

void main() {
  Registration registration = Registration();
  Login login = Login(registration.userList);

  //For User Registration
  stdout.write("Enter Your Name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter Your Email: ");
  String email = stdin.readLineSync()!;

  stdout.write("Enter Your Password: ");
  String password = stdin.readLineSync()!;

  registration.registerUser(name, email, password);

  // For User login
  stdout.write("Enter your email for login: ");
  String loginEmail = stdin.readLineSync()!;

  stdout.write("Enter your password for login: ");
  String loginPassword = stdin.readLineSync()!;

  login.loginUser(loginEmail, loginPassword);
}
