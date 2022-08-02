import 'package:flutter/material.dart';
import 'login_screen_mobile.dart';
import 'login_screen_web.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width >= 780) {
      return const LoginScreenWeb();
    } else {
      return const LoginScreenMobile();
    }
  }
}