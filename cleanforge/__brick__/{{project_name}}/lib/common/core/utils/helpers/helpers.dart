import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:{{project_name}}/common/core/utils/logger/app_logger.dart';

class Helpers {
  Helpers._();

  static String getTimeDifference(DateTime startDate) {
    Duration difference = DateTime.now().difference(startDate);
    String timeDifference = '';
    if (difference.inDays > 0) {
      timeDifference = '${difference.inDays}DAYS AGO';
    } else if (difference.inHours > 0) {
      timeDifference = '${difference.inHours}HR AGO';
    } else if (difference.inMinutes > 0) {
      timeDifference = '${difference.inMinutes}MIN AGO';
    } else if (difference.inSeconds > 0) {
      timeDifference = '${difference.inSeconds}SEC AGO';
    }
    return timeDifference;
  }

  static String formatDuration(Duration d) {
    final days = d.inDays;
    final hours = d.inHours % 24;
    final minutes = d.inMinutes % 60;
    final seconds = d.inSeconds % 60;
    return "${days}d ${hours}h ${minutes}m ${seconds}s";
  }

  static String formatDate(DateTime dateTime) {
    return DateFormat('MMM dd, yyyy').format(dateTime);
  }

  static String formatTime(DateTime dateTime) {
    return DateFormat('HH:mm').format(dateTime);
  }

  static Future<void> launchExternalUrl(String url) async {
    if (url.isEmpty) return;
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      Log.debug("Could not launch $url");
    }
  }

  static void dismissKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static void copyToClipBoard({required String text}) {
    Clipboard.setData(ClipboardData(text: text));
  }

  static Future<void> launchPhone(String phone) async {
    final Uri phoneUri = Uri(scheme: 'tel', path: phone);
    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    } else {
      throw 'Could not launch $phoneUri';
    }
  }

  static Future<void> launchEmail(String email) async {
    final Uri emailUri = Uri(scheme: 'mailto', path: email);
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw 'Could not launch $emailUri';
    }
  }

  // Name validation
  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return "Name is required";
    }

    // Updated pattern to allow:
    // - Letters (a-z, A-Z)
    // - Spaces
    // - Periods/dots (.)
    String pattern = r"^[a-zA-Z\s\.]+$";
    RegExp regex = RegExp(pattern);

    if (!regex.hasMatch(value)) {
      return "Name should only contain letters, spaces, and periods";
    }

    // Optional: Additional validation to ensure it's not just punctuation
    if (value.trim().replaceAll(RegExp(r'[\s\.]'), '').isEmpty) {
      return "Please enter a valid name";
    }

    return null;
  }

  // GitHub profile validation (optional)
  static String? validateGithub(String? value) {
    if (value == null || value.isEmpty) {
      return "Github Profile is required"; // Optional field
    }

    // GitHub URL pattern
    String pattern =
        r'^https?:\/\/(www\.)?github\.com\/[a-zA-Z0-9]([a-zA-Z0-9-])*[a-zA-Z0-9]$';
    RegExp regex = RegExp(pattern);

    if (!regex.hasMatch(value)) {
      return "Enter a valid GitHub profile URL";
    }

    return null;
  }

  // LinkedIn profile validation (optional)
  static String? validateLinkedIn(String? value) {
    if (value == null || value.isEmpty) {
      return "LinkedIn Profile is required"; // Optional field
    }

    // LinkedIn URL pattern
    String pattern =
        r'^https?:\/\/(www\.)?linkedin\.com\/in\/[a-zA-Z0-9-]+\/?$';
    RegExp regex = RegExp(pattern);

    if (!regex.hasMatch(value)) {
      return "Enter a valid LinkedIn profile URL";
    }

    return null;
  }

  // Password validation
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }

    if (value.length < 8) {
      return "Password must be at least 8 characters";
    }

    // Check for at least one uppercase letter
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return "Password must contain at least one uppercase letter";
    }

    // Check for at least one lowercase letter
    if (!value.contains(RegExp(r'[a-z]'))) {
      return "Password must contain at least one lowercase letter";
    }

    // Check for at least one digit
    if (!value.contains(RegExp(r'[0-9]'))) {
      return "Password must contain at least one number";
    }

    // Check for at least one special character
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return "Password must contain at least one special character";
    }

    return null;
  }

  // Login password validation (simpler for login)
  static String? validateLoginPassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }

    return null;
  }

  static String? validateToken(String? value) {
    if (value == "") {
      return "Token cannot be empty";
    }
    return null;
  }

  // Confirm password validation
  static String? validateConfirmPassword(
    String? value,
    TextEditingController passwordController,
  ) {
    if (value == null || value.isEmpty) {
      return "Please confirm your password";
    }
    String? password = passwordController.text;

    if (value != password) {
      return "Passwords do not match";
    }

    return null;
  }
}
