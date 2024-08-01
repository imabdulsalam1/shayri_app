import 'package:flutter/material.dart';
import 'package:shayri_app/screens/add_shayari_and_quotes/add_shayari_and_quotes_page.dart';
import 'package:shayri_app/screens/app_ui/components/dashboard_bottom_bar/dashboard_bottom_bar.dart';
import 'package:shayri_app/screens/dashboard_page/dashboard_page.dart';
import 'package:shayri_app/screens/login_signup/login_page/login_page.dart';
import 'package:shayri_app/screens/login_signup/login_signup_page.dart';
import 'package:shayri_app/screens/login_signup/signup_page/sign_up_page.dart';
import 'package:shayri_app/screens/quotes/quotes_page/qoutes_details_page/qoutes_details_page.dart';
import 'package:shayri_app/screens/quotes/quotes_page/quotes_page.dart';
import 'package:shayri_app/screens/user_account_details/user_account_details_page.dart';
import 'package:shayri_app/screens/welcome_page/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shayari App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomePage(),
      routes: {
        "WelcomePage": (context) =>const WelcomePage(),

        "LoginSignupPage": (context) =>const LoginSignupPage(),
        "SignUpPage": (context) =>const SignUpPage(),
        "LoginPage": (context) =>const LoginPage(),

        "DashboardPage": (context) =>const DashboardPage(),
        "DashboardBottomBar": (context) =>const DashboardBottomBar(),
        "UserAccountDetailsPage": (context) =>const UserAccountDetailsPage(),
        "AddShayariAndQuotesPage": (context) =>const AddShayariAndQuotesPage(),
        "QuotesPage": (context) =>const QuotesPage(),
        "QoutesDetailsPage": (context) =>const QoutesDetailsPage(),
      },
    );
  }
}