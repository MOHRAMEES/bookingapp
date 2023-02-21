import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:bookingapp/uttils/app_styles.dart';
import '../uttils/App_layout.dart';

class ColumLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;
  final bool? iscolor;
  const ColumLayout(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.alignment,
      required this.iscolor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText,
            style: iscolor == null
                ? styles.headlineStyle3.copyWith(color: Colors.white)
                : styles.headlineStyle3),
        Gap(Applayout.getHight(5)),
        Text(secondText,
            style: iscolor == null
                ? styles.headlineStyle4.copyWith(color: Colors.white)
                : styles.headlineStyle4),
      ],
    );
  }
}
