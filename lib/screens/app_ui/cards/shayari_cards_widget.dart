
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shayri_app/utils/global_widget.dart';

Widget shayariCard(context) {

  Size size = MediaQuery.of(context).size;

  return Container(
    padding: const EdgeInsets.only(left: 16.0,right: 16,top: 16,bottom: 0),
      decoration: const BoxDecoration(
        gradient: RadialGradient(colors: [Colors.green, Colors.blue],),borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
              child: reusableText(
            "Gradients are cool! Gradients are cool! csdkjn xks Gradients are cool!Gradients are cool! Gradients are cool! Gradients are cool! Gradients are cool!Gradients are cool! Gradients are cool!Gradients are cool! Gradients are cool!Gradients are cool! Gradients are cool!Gradients are cool!",isTextAlign: EditableText.debugDeterministicCursor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
            maxLines: 50,
          )),
          SizedBox(height: size.height * 0.02,),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20,),topLeft: Radius.circular(20),),
              color: CupertinoColors.activeBlue,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.copy,size: 30,color: Colors.white,),
                Icon(Icons.share,size: 30,color: Colors.white),
                Icon(Icons.favorite_border,size: 30,color: Colors.white),
                Icon(Icons.bookmark_border,size: 30,color: Colors.white),
              ],
            ),
          )
        ],
      ),
  );
}
