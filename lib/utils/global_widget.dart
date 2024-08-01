import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget reusableText(String title,
    {Color color = CupertinoColors.black,
      double fontSize = 16,
      FontWeight fontWeight = FontWeight.bold,
      int maxLines = 1,
      bool isTextAlign = false,
      height = 1.5}) {
  return Text(
    title,
    overflow: TextOverflow.ellipsis,
    maxLines: maxLines,
    textAlign: isTextAlign == true ? TextAlign.center : TextAlign.start,
    style: TextStyle(
        height: 1.5,
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
        fontFamily: 'Open Sans'),
  );
}

AppBar buildAppBar(String type,
    {Color backColor = Colors.white, Color textColor = Colors.black}) {
  return AppBar(
    backgroundColor: backColor,
    elevation: 0,
    centerTitle: true,
    title: Text(
      type,
      style: TextStyle(
          color: textColor, fontSize: 16, fontWeight: FontWeight.w600),
    ),
  );
}


Widget globalContainerBtn(String title,
    {Color bgColor = Colors.red,
      Color txtColor = Colors.black,
      double fontSize = 16,
      double width = 120.0,
      double height = 40.0,
      double borderRadious = 30.0}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadious), color: bgColor),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          reusableText(title,
              fontWeight: FontWeight.bold, fontSize: fontSize, color: txtColor),
        ],
      ),
    ),
  );
}
