import 'package:flutter/material.dart';

import '../../utils/global_widget.dart';

Widget userDetails(BuildContext context, String title, {
  FontWeight fontWeight = FontWeight.bold,
  double fontSize = 16,
  Icon icon = const Icon(Icons.person, color: Colors.deepPurple,),
}) {
  Size size = MediaQuery.of(context).size;

  return Padding(
    padding: const EdgeInsets.only(left: 16.0,right: 16,top: 5,bottom: 5),
    child: Row(
      children: [
        SizedBox(width: size.width * 0.03),
        icon,
        SizedBox(width: size.width * 0.2),
        Expanded(

          child: TextField(
            decoration: InputDecoration(
              hintText: title,
              hintStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: fontWeight,
                color: Colors.grey.shade600,
              ),
              border: InputBorder.none,
            ),
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: Colors.black45,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget editProfile(context){

  Size size = MediaQuery.of(context).size;

  return Container(
    width: size.width * 0.4,
    height: size.height * 0.06,
    decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.deepPurpleAccent,Colors.purple,],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(30)
    ),
    child: Center(child: reusableText("Edit Profile",color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18)),
  );
}