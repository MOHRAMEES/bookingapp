// ignore_for_file: use_full_hex_values_for_flutter_colors, prefer_const_constructors

import 'package:bookingapp/uttils/App_layout.dart';
import 'package:bookingapp/uttils/app_styles.dart';
import 'package:bookingapp/widgets/icon_text_widget.dart';
import 'package:bookingapp/widgets/ticket_tab.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = Applayout.getsize(context);
    return Scaffold(
        backgroundColor: styles.bgcolor,
        body: ListView(
            padding: EdgeInsets.symmetric(
                horizontal: Applayout.GetWidth(20),
                vertical: Applayout.getHight(20)),
            children: [
              Gap(Applayout.getHight(40)),
              Text(
                'What are\nyou looking for?',
                style: styles.headlineStyle1
                    .copyWith(fontSize: Applayout.getHight(35)),
              ),
              Gap(Applayout.getHight(20)),
              AppticketTabs(firstTab: 'Airline Tickets',secondTab: 'Hotels',),
              // ignore: avoid_unnecessary_containers
              Gap(Applayout.getHight(25)),
              const Icontext(
                  icon: Icons.flight_takeoff_rounded, text: 'Departure'),
              Gap(Applayout.getHight(20)),
              const Icontext(icon: Icons.flight_land_rounded, text: 'Arrival'),
              Gap(Applayout.getHight(25)),
              Container(
                  padding: EdgeInsets.symmetric(
                      vertical: Applayout.GetWidth(18),
                      horizontal: Applayout.GetWidth(15)),
                  decoration: BoxDecoration(
                      color: const Color(0xD91130CE),
                      borderRadius:
                          BorderRadius.circular(Applayout.GetWidth(10))),
                  child: Center(
                    child: Text(
                      'Find Tickets',
                      style: styles.textStyle.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  )),
              Gap(Applayout.getHight(40)),
              const DoubleText(
                  bigText: 'Upcoming Flights', smallText: 'View All'),
              Gap(Applayout.getHight(15)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: Applayout.getHight(400),
                    width: Size.width * 0.42,
                    padding: EdgeInsets.symmetric(
                        horizontal: Applayout.getHight(15),
                        vertical: Applayout.GetWidth(15)),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(Applayout.getHight(12)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 1,
                            spreadRadius: 1,
                          )
                        ]),
                    child: Column(
                      children: [
                        Container(
                          height: Applayout.getHight(190),
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Applayout.getHight(12)),
                              // ignore: prefer_const_constructors
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: const AssetImage(
                                      'assets/images/sit.jpg'))),
                        ),
                        Gap(Applayout.getHight(12)),
                        Text(
                          "20% discount on the early booking of this flight.",
                          style: styles.headlineStyle2,
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: Size.width * 0.44,
                            height: Applayout.getHight(218),
                            decoration: BoxDecoration(
                                color: const Color(0xFF3A8888),
                                borderRadius: BorderRadius.circular(
                                    Applayout.getHight(18))),
                            padding: EdgeInsets.symmetric(
                                vertical: Applayout.getHight(15),
                                horizontal: Applayout.getHight(15)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Discount\nFor Survay',
                                  style: styles.headlineStyle2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Gap(Applayout.getHight(10)),
                                Text(
                                  'Take the survay about over services and get discount',
                                  style: styles.headlineStyle2.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                              right: -45,
                              top: -40,
                              child: Container(
                                padding: EdgeInsets.all(Applayout.getHight(30)),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 18, color: Color(0xFF189999)),
                                  color: Colors.transparent,
                                ),
                              ))
                        ],
                      ),
                      Gap(Applayout.getHight(15)),
                      Container(
                        width: Size.width * 0.44,
                        height: Applayout.getHight(210),
                        padding: EdgeInsets.symmetric(
                            vertical: Applayout.getHight(15),
                            horizontal: Applayout.GetWidth(15)),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Applayout.getHight(18)),
                          color: Color(0xFFEC6545),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Take Love',
                              style: styles.headlineStyle2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Gap(Applayout.getHight(5)),
                            RichText(
                                text: const TextSpan(children: [TextSpan()]))
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )
            ]));
  }
}
