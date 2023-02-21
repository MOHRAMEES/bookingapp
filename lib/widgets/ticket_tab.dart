import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../uttils/App_layout.dart';

class AppticketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppticketTabs({super.key,required this.firstTab,required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final Size = Applayout.getsize(context);
    return FittedBox(
      child: Container(
        // ignore: sort_child_properties_last
        padding: const EdgeInsets.all(3.5),
        // ignore: sort_child_properties_last
        child: Row(
          children: [
            /*
                    airline Tickets
                    */
            Container(
              width: Size.width * .44,
              padding: EdgeInsets.symmetric(vertical: Applayout.getHight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(Applayout.getHight(50))),
                  color: Colors.white),
              child: Center(child: Text(firstTab)),
            ),
            /*
                    hotels
                    */
            Container(
              width: Size.width * .44,
              padding: EdgeInsets.symmetric(vertical: Applayout.getHight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(Applayout.getHight(50))),
                  color: Colors.transparent),
              child:  Center(child: Text(secondTab)),
            ),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Applayout.getHight(50)),
            color: const Color(0xFFFF4F6FD)),
      ),
    );
  }
}
