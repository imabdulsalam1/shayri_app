import 'package:flutter/material.dart';
import 'package:shayri_app/utils/app_colors.dart';
import 'package:shayri_app/utils/global_widget.dart';

Widget sideBar(BuildContext context, {required IconData icon, required String text}) {
  Size size = MediaQuery.of(context).size;

  return Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.welcomePurple,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 40,
          ),
        ),
        SizedBox(width: size.width * 0.03),
        Container(
          height: size.height * 0.06,
          color: Colors.black,
          width: 2,
        ),
        SizedBox(width: size.width * 0.03),
        reusableText(text, fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
      ],
    ),
  );
}
