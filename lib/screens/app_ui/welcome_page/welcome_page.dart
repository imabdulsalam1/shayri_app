import 'package:flutter/material.dart';
import 'package:shayri_app/utils/app_colors.dart';
import 'package:shayri_app/utils/global_widget.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60,bottom: 0),
          child: Column(
            children: [
              Container(

                margin: const EdgeInsets.symmetric(horizontal: 120,vertical: 50),
                padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  color: AppColors.welcomePurple,
                  ),
                  child: const Icon(Icons.format_quote_rounded,size: 100,color: Colors.white,)),
              Container(
                width: size.width,
                height: size.height,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70),topRight: Radius.circular(70)),
                color: AppColors.welcomePurple,
                ),
                child: Column(children: [
                  SizedBox(height: size.height * 0.1,),
                  reusableText("Welcome",color: Colors.white,fontSize: 24,fontWeight: FontWeight.w500),

                  SizedBox(height: size.height * 0.01,),
                  reusableText("To The Shayari and Quotes App",color: Colors.white,fontSize: 24,fontWeight: FontWeight.w500),
                  SizedBox(height: size.height * 0.05,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: Column(children: [
                      reusableText("Shayari and Quotes App - Express",color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500,maxLines: 5),
                      SizedBox(height: size.height * 0.01,),
                      reusableText("your mood with all type of",color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500,maxLines: 5),
                      SizedBox(height: size.height * 0.01,),
                      reusableText("Shayari and Quotes Image's",color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500,maxLines: 5),
                      SizedBox(height: size.height * 0.05,),
                      GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "DashboardPage");
                          },
                          child: globalContainerBtn("Get Started",bgColor: Colors.red,width: size.width * 0.5,height: size.height * 0.06,))
                    ],)
                  ),
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}
