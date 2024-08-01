import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shayri_app/utils/global_widget.dart';

import 'account_details_widget.dart';

class UserAccountDetailsPage extends StatefulWidget {
  const UserAccountDetailsPage({super.key});

  @override
  State<UserAccountDetailsPage> createState() => _UserAccountDetailsPageState();
}

class _UserAccountDetailsPageState extends State<UserAccountDetailsPage> {
  @override
  Widget build(BuildContext context) {

    Size size =  MediaQuery.of(context).size;

    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.deepPurpleAccent,Colors.purple,],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60.0),
                  bottomRight: Radius.circular(60.0),
                ),
              ),
              child: Column(
                children: [
                  // back arrow button
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.02,),
                  reusableText("Abdul Salam",fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),
                  SizedBox(height: size.height* 0.02),
                  const CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 50.0, color: Colors.purple),
                  ),

                ],
              ),
            ),
            SizedBox(height: size.height * 0.02,),
            Column(
              children: [
                userDetails(
                  context,
                  'Abdul Salam',
                  icon: const Icon(Icons.person_2_outlined, color: Colors.deepPurple),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                const Divider(
                  color: Colors.grey,height: 1,),
                userDetails(
                  context,
                  'Email',
                  icon: const Icon(Icons.email_outlined, color: Colors.deepPurple),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                const Divider(
                  color: Colors.grey,height: 1,),
                userDetails(
                  context,
                  '+91 0123456789',
                  icon: const Icon(Icons.phone_android, color: Colors.deepPurple),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                const Divider(
                  color: Colors.grey,height: 1,),
                userDetails(
                  context,
                  'Instagram Account',
                  icon: const Icon(FontAwesomeIcons.instagram, color: Colors.deepPurple),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                const Divider(
                  color: Colors.grey,height: 1,),
                userDetails(
                  context,
                  'Password',
                  icon: const Icon(Icons.remove_red_eye_outlined, color: Colors.deepPurple),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),

                const Divider(
                  color: Colors.grey,height: 1,),
                SizedBox(
                  height: size.height * 0.02,),
                editProfile(context),
              ],
            )
          ],
        ),
      ),
    );
  }
}
