import 'package:flutter/material.dart';

class AppLayout_builder extends StatelessWidget {
  final bool? iscolor;
  final int? sections;
  final double? width;
  const AppLayout_builder(
      {super.key,
      required this.iscolor,
      required this.sections,
      this.width = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
      builder: (BuildContext context, BoxConstraints constraints) {
        print('the width is ${constraints.widthConstraints()}');
        return Flex(
            direction: Axis.horizontal,
            mainAxisSize: MainAxisSize.max,
            children: List.generate(
                (constraints.constrainWidth() / sections!).floor(),
                (index) => SizedBox(
                      width: width,
                      height: 1,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: iscolor == null
                                  ? Colors.white
                                  : Colors.grey.shade300)),
                    )));
      },
    );
  }
}
