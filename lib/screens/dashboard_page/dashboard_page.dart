import 'package:flutter/material.dart';
import 'package:shayri_app/screens/app_ui/cards/shayari_cards_widget.dart';
import 'package:shayri_app/screens/app_ui/components/dashboard_bottom_bar/dashboard_bottom_bar.dart';
import 'package:shayri_app/utils/app_colors.dart';
import 'package:shayri_app/utils/global_widget.dart';

import '../app_ui/components/sidebar/sidebar_page/sidebar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: const Sidebar(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            height: size.height * 0.2,
            padding: const EdgeInsets.all(5),
            color: AppColors.welcomePurple,
            child: Row(
              children: [
                SizedBox(width: size.width * 0.02),
                GestureDetector(
                  onTap: () {
                    _scaffoldKey.currentState?.openDrawer();
                  },
                  child: const Icon(Icons.menu, size: 30, color: Colors.white),
                ),
                SizedBox(width: size.width * 0.2),
                reusableText(
                  "Shayari and Quotes",
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0,top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                shayariCard(context),
                SizedBox(height: size.height * 0.02,),
                shayariCard(context),
                SizedBox(height: size.height * 0.02,),
                shayariCard(context),
                SizedBox(height: size.height * 0.02,),
                shayariCard(context),
                SizedBox(height: size.height * 0.02,),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const DashboardBottomBar(),
      ),
    );
  }
}
