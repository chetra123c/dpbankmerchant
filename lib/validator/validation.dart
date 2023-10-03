import 'package:flutter/material.dart';
class Validator {
  static String? validatePassword(String ? value) {
    RegExp regex =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if(value!.length > 15 || value.length < 8) {
      return 'please enter password !';
    } else {
      if (!regex.hasMatch(value)) {
        return 'enter valid password !';
      } else {
        return null;
      }
    }
  }
  static String? nameValidate(String ? value) {
    RegExp regex = RegExp('[a-zA-Z]');
    if (!regex.hasMatch(value!)) {
      return 'please enter username !';
    } else {
      return null;
    }
  }
}


