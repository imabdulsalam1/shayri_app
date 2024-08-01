import 'package:flutter/material.dart';
import 'package:shayri_app/utils/app_colors.dart';
import 'package:shayri_app/utils/global_widget.dart';

class AddShayariAndQuotesPage extends StatefulWidget {
  const AddShayariAndQuotesPage({super.key});

  @override
  State<AddShayariAndQuotesPage> createState() => _AddShayariAndQuotesPageState();
}

class _AddShayariAndQuotesPageState extends State<AddShayariAndQuotesPage> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return  Scaffold(
      backgroundColor: AppColors.addShayriBgColor,
      body: Center(
        child: Column(children: [
          SizedBox(height: size.height * 0.1,),
          const Icon(Icons.settings_applications_sharp,size: 120,color: Colors.white,),
          SizedBox(height: size.height * 0.02,),
          reusableText("Add Shayari and Quotes",fontSize: 28,fontWeight: FontWeight.w600,color: Colors.white),
          SizedBox(height: size.height * 0.1,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            addShayriCard(context,"Add Shayri",fontSize: 20,txtColor: Colors.white,fontWeight: FontWeight.w600, Icons.copy_sharp,),
            addShayriCard(context,"Add Quotes",fontSize: 20,txtColor: Colors.white,fontWeight: FontWeight.w600, Icons.format_quote_sharp),
          ],),
          SizedBox(height: size.height * 0.1,),
          globalContainerBtn("Logout",bgColor: Colors.white,txtColor: AppColors.welcomePurple,width: size.width * 0.5,height: size.height * 0.08,fontSize: 24)

        ],),
      ),
    );
  }
}

Widget addShayriCard(context,
    String title,
    IconData icon,
    {Color txtColor = Colors.black,
      double fontSize = 16,
      FontWeight fontWeight = FontWeight.bold,}
    ){

  Size size = MediaQuery.of(context).size;

  return Container(
    width: size.width * 0.4,
    height: size.height * 0.25,
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color(0xFF2B044D),
          Color(0xFFF063B8),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.all(Radius.circular(30))
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Container(
        padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),color: Colors.white
          ),
          child: Icon(icon,size: 50,color: AppColors.welcomePurple)),
      SizedBox(height: size.height * 0.02),
      reusableText(title,fontWeight: fontWeight,fontSize: fontSize,color: txtColor)
      ],
    ),
  );
}