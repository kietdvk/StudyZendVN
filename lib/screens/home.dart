import 'package:flutter/material.dart';
import 'package:flutter_study/const/const.dart';
import 'package:flutter_study/screens/card_widget_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 250,
          toolbarHeight: 110,
          leading: Padding(
            padding: dPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ZendVN",
                  style: dStyleTextSecond,
                ),
                Text(
                  "Study Flutter",
                  style: dStyleTextMainTitle,
                )
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.menu),
            )
          ],
        ),
        body: Padding(
          padding: dPadding,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.white, Colors.blue],
                  ),
                ),
              ),
              CardWidget(
                title: "Categories",
              ),
              SizedBox(
                height: 50,
              ),
              CardWidget(
                title: "News",
              ),
            ],
          ),
        ));
  }
}
