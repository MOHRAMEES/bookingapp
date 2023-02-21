import 'package:bookingapp/Ticket_View.dart';
import 'package:bookingapp/uttils/App_layout.dart';
import 'package:bookingapp/uttils/app_info_list.dart';
import 'package:bookingapp/uttils/app_styles.dart';
import 'package:bookingapp/widgets/Layout_builder_widget.dart';
import 'package:bookingapp/widgets/colum_layout.dart';
import 'package:bookingapp/widgets/ticket_tab.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = Applayout.getsize(context);
    return Scaffold(
      backgroundColor: styles.bgcolor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: Applayout.getHight(20),
              vertical: Applayout.getHight(20)),
          children: [
            Gap(Applayout.getHight(40)),
            Text(
              'Tickets',
              style: styles.headlineStyle1,
            ),
            Gap(Applayout.getHight(20)),
            const AppticketTabs(firstTab: 'Upcoming', secondTab: 'previous'),
            Gap(Applayout.getHight(20)),
            Container(
              padding: EdgeInsets.only(left: Applayout.getHight(15)),
              child: TicketView(
                ticket: ticketlist[0],
                iscolor: true,
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const ColumLayout(
                        firstText: 'Flutter DB',
                        secondText: 'Passenger',
                        alignment: CrossAxisAlignment.start,
                        iscolor: null,
                      ),
                      const ColumLayout(
                        firstText: '5221478566',
                        secondText: 'Passport',
                        alignment: CrossAxisAlignment.end,
                        iscolor: null,
                      )
                    ],
                  ),
                  Gap(Applayout.getHight(20)),
                  const AppLayout_builder(
                    iscolor: false,
                    sections: 15,
                    width: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const ColumLayout(
                        firstText: '005544477147 ',
                        secondText: 'number of E-ticket',
                        alignment: CrossAxisAlignment.start,
                        iscolor: null,
                      ),
                      const ColumLayout(
                        firstText: 'B2SG28',
                        secondText: 'Booking Code',
                        alignment: CrossAxisAlignment.end,
                        iscolor: null,
                      )
                    ],
                  ),
                  Gap(Applayout.getHight(20)),
                  const AppLayout_builder(
                    iscolor: false,
                    sections: 15,
                    width: 5,
                  ),
                  Gap(Applayout.getHight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/visa.png',
                                scale: 60,
                              ),
                              Text(
                                '***2462',
                                style: styles.headlineStyle3,
                              )
                            ],
                          ),
                          const Gap(5),
                          Text(
                            'Payment method',
                            style: styles.headlineStyle4,
                          )
                        ],
                      ),
                      const ColumLayout(
                        firstText: '\$248.99',
                        secondText: 'Price',
                        alignment: CrossAxisAlignment.end,
                        iscolor: false,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Gap(Applayout.getHight(20))
                ],
              ),
            ),
            /*
            bar code
          */
            const SizedBox(
              height: 1,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(Applayout.getHight(21)),
                      bottomRight: Radius.circular(Applayout.getHight(21)))),
              margin: EdgeInsets.only(
                  right: Applayout.getHight(15), left: Applayout.getHight(15)),
              padding: EdgeInsets.only(
                  top: Applayout.getHight(15), bottom: Applayout.getHight(15)),
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: Applayout.getHight(15)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(Applayout.getHight(15)),
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: 'https://github.com/martinovovo',
                    drawText: false,
                    color: styles.textcolor,
                    width: double.infinity,
                    height: 70,
                  ),
                ),
              ),
            ),
            Gap(Applayout.getHight(20)),
            Container(
              padding: EdgeInsets.only(left: Applayout.getHight(15)),
              child: TicketView(
                ticket: ticketlist[0],
                // iscolor: true,
              ),
            ),
          ],
        ),
        Positioned(
          left: Applayout.getHight(22),
          top: Applayout.getHight(295),
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: styles.textcolor, width: 2),
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: styles.textcolor,
            ),
          ),
        ),
        Positioned(
          right: Applayout.getHight(22),
          top: Applayout.getHight(295),
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: styles.textcolor, width: 2),
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: styles.textcolor,
            ),
          ),
        )
      ]),
    );
  }
}
