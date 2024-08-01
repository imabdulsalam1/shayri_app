import 'package:flutter/material.dart';
import 'package:shayri_app/utils/global_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: reusableText("Sign Up"),),
    );
  }
}
