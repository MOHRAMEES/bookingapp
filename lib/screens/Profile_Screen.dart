// ignore_for_file: sort_child_properties_last

import 'package:bookingapp/uttils/App_layout.dart';
import 'package:bookingapp/uttils/app_styles.dart';
import 'package:bookingapp/widgets/Layout_builder_widget.dart';
import 'package:bookingapp/widgets/colum_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.bgcolor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: Applayout.getHight(20),
            vertical: Applayout.getHight(20)),
        children: [
          Gap(Applayout.getHight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Applayout.getHight(86),
                width: Applayout.getHight(86),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Applayout.getHight(10)),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/flight.png'))),
              ),
              Gap(Applayout.getHight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: styles.headlineStyle1,
                  ),
                  Gap(Applayout.getHight(2)),
                  Text(
                    'New-York',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  Gap(Applayout.getHight(8)),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Applayout.getHight(100)),
                        color: const Color(0xFFFEF4F3)),
                    padding: EdgeInsets.symmetric(
                        horizontal: Applayout.getHight(3),
                        vertical: Applayout.getHight(3)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF526799)),
                          child: const Icon(
                              FluentSystemIcons.ic_fluent_shield_filled,
                              color: Colors.white,
                              size: 15),
                        ),
                        Gap(Applayout.getHight(5)),
                        const Text(
                          'Premium Status',
                          style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w600),
                        ),
                        Gap(Applayout.getHight(5)),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print('you are tapped');
                    },
                    child: Text(
                      'Edit',
                      style: styles.textStyle.copyWith(
                          color: styles.primarycolor,
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(Applayout.getHight(8)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(Applayout.getHight(8)),
          Stack(
            children: [
              Container(
                height: Applayout.getHight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: styles.primarycolor,
                    borderRadius:
                        BorderRadius.circular(Applayout.getHight(18))),
              ),
              Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(Applayout.getHight(30)),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: Color(0xFF264CD2)),
                    ),
                  )),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Applayout.getHight(25),
                    vertical: Applayout.getHight(20)),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      // ignore: unnecessary_const
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: styles.primarycolor,
                        size: 27,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(Applayout.getHight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'you\'v got a new award',
                          style: styles.headlineStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          'You have 95 flights in a year',
                          style: styles.headlineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 15),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(Applayout.getHight(25)),
          Text(
            'Accumulated Miles',
            style: styles.headlineStyle2,
          ),
          Gap(Applayout.getHight(20)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Applayout.getHight(15)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Applayout.GetWidth(18)),
                color: styles.bgcolor,
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 10,
                      spreadRadius: 10)
                ]),
            child: Column(
              children: [
                Gap(Applayout.getHight(15)),
                Text('192802',
                    style: TextStyle(
                        fontSize: 40,
                        color: styles.textcolor,
                        fontWeight: FontWeight.w600)),
                Gap(Applayout.getHight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Miles accured',
                      style: styles.headlineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      '23 May 2023',
                      style: styles.headlineStyle4.copyWith(fontSize: 16),
                    )
                  ],
                ),
                Gap(Applayout.getHight(4)),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Gap(Applayout.getHight(4)),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const ColumLayout(
                        firstText: '23 042',
                        secondText: 'Miles',
                        alignment: CrossAxisAlignment.start,
                        iscolor: false),
                    const ColumLayout(
                        firstText: 'Airline Co',
                        secondText: 'Received From',
                        alignment: CrossAxisAlignment.end,
                        iscolor: false)
                  ],
                ),
                Gap(Applayout.getHight(12)),
                const AppLayout_builder(iscolor: false, sections: 12),
                Gap(Applayout.getHight(12)),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const ColumLayout(
                        firstText: '24',
                        secondText: 'Miles',
                        alignment: CrossAxisAlignment.start,
                        iscolor: false),
                    const ColumLayout(
                        firstText: 'McDonal\'s',
                        secondText: 'Received From',
                        alignment: CrossAxisAlignment.end,
                        iscolor: false)
                  ],
                ),
                Gap(Applayout.getHight(12)),
                const AppLayout_builder(iscolor: false, sections: 12),
                Gap(Applayout.getHight(12)),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const ColumLayout(
                        firstText: '52 340',
                        secondText: 'Miles',
                        alignment: CrossAxisAlignment.start,
                        iscolor: false),
                    const ColumLayout(
                        firstText: 'Exuma',
                        secondText: 'Received From',
                        alignment: CrossAxisAlignment.end,
                        iscolor: false)
                  ],
                ),
              ],
            ),
          ),
          Gap(Applayout.getHight(25)),
          InkWell(
            onTap: () => print('you are tapped'),
            child: Center(
              child: Text(
                'How to get more miles',
                style: styles.textStyle.copyWith(
                    color: styles.primarycolor, fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}
