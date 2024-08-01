import 'package:flutter/material.dart';
import 'package:shayri_app/screens/login_signup/login_signup_bottom_bar.dart';
import 'package:shayri_app/utils/global_widget.dart';

import '../../utils/app_colors.dart';

class LoginSignupPage extends StatefulWidget {
  const LoginSignupPage({super.key});

  @override
  State<LoginSignupPage> createState() => _LoginSignupPageState();
}

class _LoginSignupPageState extends State<LoginSignupPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [GestureDetector(
                    child: reusableText("Skip"),
                onTap: (){
                      Navigator.pushNamed(context, "DashboardPage");
                },
                ),],),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 120,vertical: 50),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColors.welcomePurple,
              ),
              child: const Icon(Icons.format_quote_rounded,size: 100,color: Colors.white,)),
            // Container(
            //     height: size.height * 0.2,
            //     decoration: BoxDecoration(
            //         color: AppColors.welcomePurple,
            //         borderRadius: BorderRadius.vertical(top: Radius.circular(150),)
            //     ),
            //     child: Column(children: [
            //       Container(
            //         margin: const EdgeInsets.only(top: 40),
            //         height: size.height * 0.2,
            //         decoration: BoxDecoration(
            //           color: Colors.red,
            //           borderRadius: BorderRadius.vertical(top: Radius.circular(150),),
            //         ),
            //       ),
            //       Container(
            //         margin: const EdgeInsets.only(top: 40),
            //         height: size.height * 0.2,
            //         decoration: BoxDecoration(
            //           color: Colors.yellow,
            //           borderRadius: BorderRadius.vertical(top: Radius.circular(150),),
            //         ),
            //       ),
            //     ],)
            // ),
            const ArcDesignWidget(
              size: Size(400,20), // You can adjust the size as needed
            ),
          ],
        ),
      ),
    );
  }
}
