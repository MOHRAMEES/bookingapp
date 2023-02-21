import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:bookingapp/uttils/app_styles.dart';
import '../uttils/App_layout.dart';

class Icontext extends StatelessWidget {
  final IconData icon;
  final String text;
  const Icontext({super.key,required this.icon,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: Applayout.GetWidth(12), horizontal: Applayout.GetWidth(12)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Applayout.GetWidth(10))),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables

        children: [
          // ignore: prefer_const_constructors
          Icon(
           icon,
            color: const Color(0xFFBFC2DF),
          ),
          Gap(Applayout.GetWidth(10)),
          Text(
           text,
            style: styles.textStyle,
          )
        ],
      ),
    );
  }
}
