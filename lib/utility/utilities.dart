import 'package:connectivity_plus/connectivity_plus.dart';

class Utility {
  static bool isValidEmail(String email) {
    final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  static bool passwordValidation(String password) {
    final RegExp passwordRegex =
        RegExp(r'^(?=.*[!@#\$%\^&\*])(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{8,}$');
    return passwordRegex.hasMatch(password);
  }

  static bool phoneNumberValidation(String phoneNumber) {
    final RegExp phoneNumberRegex = RegExp(r'^[0-9]+$');
    return phoneNumberRegex.hasMatch(phoneNumber) && phoneNumber.length == 10;
  }

  static Future<bool> checkInternet() async {
    ConnectivityResult connectivityResult =
        await Connectivity().checkConnectivity();
    return (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi);
  }
}
