import 'package:get/get.dart';

class Validators {
  Validators._();

  /// Validates a name, allowing letters, spaces, and periods.
  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return "Name is required";
    }
    String pattern = r"^[a-zA-Z\s\.]+$";
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return "Name should only contain letters, spaces, and periods";
    }
    if (value.trim().replaceAll(RegExp(r'[\s\.]'), '').isEmpty) {
      return "Please enter a valid name";
    }
    return null;
  }

  /// Validates a GitHub profile URL format.
  static String? validateGithub(String? value) {
    if (value == null || value.isEmpty) {
      return "Github Profile is required";
    }
    String pattern =
        r'^https?:\/\/(www\.)?github\.com\/[a-zA-Z0-9]([a-zA-Z0-9-])*[a-zA-Z0-9]$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return "Enter a valid GitHub profile URL";
    }
    return null;
  }

  /// Validates a LinkedIn profile URL format.
  static String? validateLinkedIn(String? value) {
    if (value == null || value.isEmpty) {
      return "LinkedIn Profile is required";
    }
    String pattern =
        r'^https?:\/\/(www\.)?linkedin\.com\/in\/[a-zA-Z0-9-]+\/?$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return "Enter a valid LinkedIn profile URL";
    }
    return null;
  }

  /// Validates password complexity for registration (length, cases, number, special character).
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }
    if (value.length < 8) {
      return "Password must be at least 8 characters";
    }
    if (!value.contains(RegExp(r'[a-z]'))) {
      return "Password must contain at least one lowercase letter";
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      return "Password must contain at least one number";
    }
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return "Password must contain at least one special character";
    }
    return null;
  }

  /// Validates that a password field is not empty on a login screen.
  static String? validateLoginPassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }
    return null;
  }

  /// Validates that a token field is not empty.
  static String? validateToken(String? value) {
    if (value == "") {
      return "Token cannot be empty";
    }
    return null;
  }

  /// Validates that a string is a correctly formatted email address.
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }
    if (!value.isEmail) {
      return "Enter a valid email address";
    }
    return null;
  }
  }