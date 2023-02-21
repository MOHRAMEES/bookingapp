// ignore_for_file: avoid_unnecessary_containers

import 'package:bookingapp/uttils/App_layout.dart';
import 'package:bookingapp/uttils/app_styles.dart';
import 'package:bookingapp/widgets/Layout_builder_widget.dart';
import 'package:bookingapp/widgets/colum_layout.dart';
import 'package:bookingapp/widgets/thick_container.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? iscolor;
  const TicketView({super.key, required this.ticket, this.iscolor});

  @override
  Widget build(BuildContext context) {
    final Size = Applayout.getsize(context);
    return SizedBox(
      width: Size.width * 0.85,
      height: Applayout.getHight(GetPlatform.isAndroid == true ? 184 : 189),
      child: Container(
        margin: EdgeInsets.only(right: Applayout.getHight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // /*
            // showing the blue part of the card/ticket
            // */

            Container(
              decoration: BoxDecoration(
                  color: iscolor == null ? Color(0xFF526799) : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Applayout.getHight(21)),
                      topRight: Radius.circular(Applayout.getHight(21)))),
              padding: EdgeInsets.all(Applayout.getHight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: iscolor == null
                            ? styles.headlineStyle3
                                .copyWith(color: Colors.white)
                            : styles.headlineStyle3,
                      ),
                      Expanded(child: Container()),
                      const ThickContainer(
                        iscolor: true,
                      ),
                      Expanded(
                          child: Stack(children: [
                        SizedBox(
                          height: Applayout.getHight(24),
                          child: const AppLayout_builder( sections: 6, iscolor: null,)
                        ),
                        Center(
                          child: Transform.rotate(
                            angle: 1.5,
                            child: Icon(Icons.local_airport_rounded,
                                color: iscolor == null
                                    ? Colors.white
                                    : Color(0xFF8ACCF7)),
                          ),
                        ),
                      ])),
                      const ThickContainer(
                        iscolor: true,
                      ),
                      Expanded(child: Container()),
                      Text(
                        ticket['to']['code'],
                        style: iscolor == null
                            ? styles.headlineStyle3
                                .copyWith(color: Colors.white)
                            : styles.headlineStyle3,
                      )
                    ],
                  ),
                  Row(
                    //ignore: prefer_const_literals_to_create_immutables
                    children: [
                      SizedBox(
                        width: Applayout.GetWidth(100),
                        child: Text(
                          ticket['from']['name'],
                          style: iscolor == null
                              ? styles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : styles.headlineStyle4,
                        ),
                      ),
                      Text(
                        ticket['Flying_time'],
                        style: iscolor == null
                            ? styles.headlineStyle4
                                .copyWith(color: Colors.white)
                            : styles.headlineStyle4,
                      ),
                      SizedBox(
                        width: Applayout.GetWidth(100),
                        child: Text(ticket['to']['name'],
                            textAlign: TextAlign.end,
                            style: iscolor == null
                                ? styles.headlineStyle4
                                    .copyWith(color: Colors.white)
                                : styles.headlineStyle4),
                      ),
                    ],
                  ),
                  const Gap(3)
                ],
              ),
            ),
            // /*
            // showing the orange part of the card/ticket
            // */
            Container(
              // color:const Color(0xFFF37B67),
              color: iscolor == null ? styles.orangecolor : Colors.white,
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    height: Applayout.getHight(20),
                    width: Applayout.GetWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: iscolor == null
                                ? Colors.white
                                : Colors.grey.shade200,
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)))),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (constraints.constrainWidth() / 15).floor(),
                                (index) => SizedBox(
                                      width: 5,
                                      height: 1,
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: iscolor == null
                                                  ? Colors.white
                                                  : Colors.grey.shade300)),
                                    )),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: iscolor == null
                                ? Colors.grey.shade200
                                : Colors.white,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)))),
                  )
                ],
              ),
            ),
            // /*
            // bottom part of the card/ticket
            // */
            Container(
              decoration: BoxDecoration(
                  color: iscolor == null ? styles.orangecolor : Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        iscolor == null ? 21 : 0,
                      ),
                      bottomRight: Radius.circular(iscolor == null ? 21 : 0))),
              padding: const EdgeInsets.only(
                  left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '1 MAY',
                            style: iscolor == null
                                ? styles.headlineStyle3
                                    .copyWith(color: Colors.white)
                                : styles.headlineStyle3,
                          ),
                          const Gap(5),
                          Text(
                            'DATE',
                            style: iscolor == null
                                ? styles.headlineStyle4
                                    .copyWith(color: Colors.white)
                                : styles.headlineStyle4,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '08:00 AM ',
                            style: iscolor == null
                                ? styles.headlineStyle3
                                    .copyWith(color: Colors.white)
                                : styles.headlineStyle3,
                          ),
                          const Gap(5),
                          Text(
                            'Departure time',
                            style: iscolor == null
                                ? styles.headlineStyle4
                                    .copyWith(color: Colors.white)
                                : styles.headlineStyle4,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '23 ',
                            style: iscolor == null
                                ? styles.headlineStyle3
                                    .copyWith(color: Colors.white)
                                : styles.headlineStyle3,
                          ),
                          const Gap(5),
                          Text(
                            'Number',
                            style: iscolor == null
                                ? styles.headlineStyle4
                                    .copyWith(color: Colors.white)
                                : styles.headlineStyle4,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
