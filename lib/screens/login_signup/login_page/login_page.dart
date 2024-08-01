import 'package:flutter/material.dart';
import 'package:shayri_app/utils/global_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [Center(child: reusableText("Login Page"))],),
    );
  }
}
