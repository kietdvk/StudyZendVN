import 'package:flutter/material.dart';
import 'package:flutter_study/consts/const.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 210,
        toolbarHeight: 65,
        leading: Column(
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
        actions: [Icon(Icons.menu)],
      ),
      body: Center(
        child: Text("Hello"),
      ),
    );
  }
}
