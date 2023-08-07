import 'package:flutter/material.dart';
import 'package:flutter_study/const/const.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: dStyleTextNomal.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                "More...",
                style: dStyleTextNomal,
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CardInfor(),
              CardInfor(),
              CardInfor(),
              CardInfor(),
            ],
          ),
        ),
      ],
    );
  }
}

class CardInfor extends StatelessWidget {
  const CardInfor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: dMaginRight,
      width: 160,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.blue,
            ]),
      ),
    );
  }
}
