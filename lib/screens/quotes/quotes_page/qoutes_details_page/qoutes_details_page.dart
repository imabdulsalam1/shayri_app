import 'package:flutter/material.dart';
import 'package:shayri_app/screens/app_ui/cards/shayari_cards_widget.dart';
import 'package:shayri_app/utils/global_widget.dart';

class QoutesDetailsPage extends StatefulWidget {
  const QoutesDetailsPage({super.key});

  @override
  State<QoutesDetailsPage> createState() => _QoutesDetailsPageState();
}

class _QoutesDetailsPageState extends State<QoutesDetailsPage> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0,right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.02,),
              shayariCard(context),
              SizedBox(height: size.height * 0.005,),
              reusableText("Comments:",color: Colors.grey.shade600),
            ],
          ),
        ),
      ),
    );
  }
}
