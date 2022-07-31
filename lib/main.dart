import 'package:flutter/material.dart';
import 'package:flutter_login_register/utils/routes.dart';
import 'package:flutter_login_register/view/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: AppRoutes.define(),
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}
