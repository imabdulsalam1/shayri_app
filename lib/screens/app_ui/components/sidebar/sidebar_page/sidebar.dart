import 'package:flutter/material.dart';
import 'package:shayri_app/utils/global_widget.dart';

import '../sidebar_widget/sidebar_widget.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({super.key});

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
        children: [
          SizedBox(height: size.height * 0.02,),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            reusableText("Select your Interest",fontWeight: FontWeight.w600,fontSize: 28),
          GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: const Icon(Icons.arrow_back_ios_new_rounded,size: 20,))
          ]),
          SizedBox(height: size.height * 0.02,),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, "AddShayariAndQuotesPage");
            },
            title: sideBar(context, icon: Icons.format_quote_rounded, text: "Shayari and Quotes"),
          ),
          SizedBox(height: size.height * 0.02,),
          ListTile(title: sideBar(context, icon: Icons.developer_mode_rounded, text: "Developed by Abdul Salam")),
          SizedBox(height: size.height * 0.02,),
          ListTile(title: sideBar(context, icon: Icons.account_tree, text: "Follow us on Social Media")),
          SizedBox(height: size.height * 0.02,),
          ListTile(title: sideBar(context, icon: Icons.privacy_tip_outlined, text: "Privacy Policy")),
          SizedBox(height: size.height * 0.02,),
          ListTile(title: sideBar(context, icon: Icons.error_outline, text: "About Us")),
          SizedBox(height: size.height * 0.02,),
          ListTile(title: sideBar(context, icon: Icons.contact_page_outlined, text: "Contact Us")),
        ],
                  ),
      ),
    );
  }
}
