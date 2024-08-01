import 'package:flutter/material.dart';
import 'package:shayri_app/utils/app_colors.dart';

class DashboardBottomBar extends StatelessWidget {
  const DashboardBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.only(top: 10,bottom: 20),
      width: size.width,
      // height: size.height * 0.13,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: AppColors.welcomePurple,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed("#");
            },
            child: Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50),),color: Colors.white
                ),
                child: const Icon(Icons.home, size: 50, color: AppColors.welcomePurple)),
          ),
          GestureDetector(

            onTap: (){
              Navigator.pushNamed(context, "QuotesPage");
            },

            child: Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50),),color: Colors.white
                ),
                child: const Icon(Icons.format_quote_rounded, size: 50, color: AppColors.welcomePurple)),
          ),
          Container(
            padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50),),color: Colors.white
              ),
              child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, "UserAccountDetailsPage");
                  },
                  child: const Icon(Icons.account_circle_outlined, size: 50, color: AppColors.welcomePurple))),
        ],
      ),
    );
  }
}
