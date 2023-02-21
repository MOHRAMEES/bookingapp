import 'package:flutter/material.dart';
import 'package:bookingapp/uttils/app_styles.dart';

class DoubleText extends StatelessWidget {
  final String smallText;
  final String bigText;
  const DoubleText({super.key,required this.bigText,required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
        bigText,
          style: styles.headlineStyle2,
        ),
        InkWell(
          onTap: () {},
          child: Text(
           smallText,
            style: styles.textStyle.copyWith(color: styles.primarycolor),
          ),
        )
      ],
    );
  }
}
