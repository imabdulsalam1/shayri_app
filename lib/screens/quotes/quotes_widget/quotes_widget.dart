import 'package:flutter/material.dart';
import 'package:shayri_app/utils/global_widget.dart';

Widget quotesCard(context){

  Size size = MediaQuery.of(context).size;

  return GestureDetector(
    onTap: (){
      Navigator.pushNamed(context, "QoutesDetailsPage");
    },
    child: Container(
      padding: const EdgeInsets.all(16),
      width: size.width * 0.45,
      height: size.height * 0.25,
      decoration: const BoxDecoration(
          gradient: RadialGradient(colors: [Colors.green, Colors.blue],),borderRadius: BorderRadius.all(Radius.circular(30))
      ),
      child: Center(
        child:
        reusableText("Be who you are and say what you feel, because those who mind don't matter, and those who matter don't mind.”",maxLines: 20,color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),
      ),
    ),
  );
}