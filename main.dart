import 'dart:io';
import 'registration.dart';
import 'login.dart';

void main() {
  print("WELCOME TO CUSTOMER RELATIONSHIP MANAGEMENT SYSTEM");
  Registration registration = Registration();
  Login login = Login(registration.userList);
  print("---------------------------------------------------");

  //For User Registration
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
  print("------------- THANKS FOR LOGIN -------------");
}
