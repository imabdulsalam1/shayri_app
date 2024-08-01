import 'package:flutter/material.dart';
import 'package:shayri_app/screens/app_ui/components/dashboard_bottom_bar/dashboard_bottom_bar.dart';
import 'package:shayri_app/screens/dashboard_page/dashboard_page.dart';
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
        "DashboardPage": (context) =>const DashboardPage(),
        "DashboardBottomBar": (context) =>const DashboardBottomBar(),

      },
    );
  }
}