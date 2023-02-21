import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ThickContainer extends StatelessWidget {
  final bool? iscolor;
  const ThickContainer({super.key,required this.iscolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2.5, color:iscolor==null? Colors.white:Color(0xFF8ACCF7))),
    );
  }
}
