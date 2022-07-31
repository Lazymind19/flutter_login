import 'dart:js';

import 'package:flutter/material.dart';

import '../view/login_screen.dart';
import '../view/register_screen.dart';

class AppRoutes {
  static const String authLogin = '/auth-login';
  static const String authRegister = '/auth-register';

  static Map<String, WidgetBuilder> define() {
   return {
      authLogin:
      (context) => Login(),
      authRegister:
      (context) => Register(),
    };
  }
}
