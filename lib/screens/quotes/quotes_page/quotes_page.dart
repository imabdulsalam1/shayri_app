import 'package:flutter/material.dart';
import 'package:shayri_app/screens/quotes/quotes_widget/quotes_widget.dart';
import 'package:shayri_app/utils/global_widget.dart';

class QuotesPage extends StatefulWidget {
  const QuotesPage({super.key});

  @override
  State<QuotesPage> createState() => _QuotesPageState();
}

class _QuotesPageState extends State<QuotesPage> {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;


    return Scaffold(
      appBar: AppBar(title: Row(
          children: [
            SizedBox(width: size.width * 0.15,),
            reusableText("Daily Quotes",fontSize: 22,fontWeight: FontWeight.w800,)]),),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, "QoutesDetailsPage");
                  },
                  child: quotesCard(context)),
              quotesCard(context),
            ],),
            SizedBox(height: size.height * 0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                quotesCard(context),
                quotesCard(context),
              ],),
            SizedBox(height: size.height * 0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                quotesCard(context),
                quotesCard(context),
              ],),
            SizedBox(height: size.height * 0.02,),

          ],
        ),
      ),
    );
  }
}
