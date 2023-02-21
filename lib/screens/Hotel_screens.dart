import 'package:bookingapp/uttils/App_layout.dart';
import 'package:bookingapp/uttils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    print('hotel print is ${hotel['price']}');
    final Size = Applayout.getsize(context);
    // ignore: sized_box_for_whitespace
    return Container(
      width: Size.width * 0.6,
      height: Applayout.getHight(350),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: styles.primarycolor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 5,
            )
          ]),
      child: Column(
        children: [
          Container(
            height: Applayout.getHight(180),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: styles.primarycolor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/${hotel['image']}'))),
          ),
          const Gap(10),
          Text(
            hotel['place'],
            style: styles.headlineStyle2.copyWith(color: styles.kakicolor),
          ),
          const Gap(5),
          Text(
            hotel['destination'],
            style: styles.headlineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            '\$${hotel['price']} /night',
            style: styles.headlineStyle1.copyWith(color: styles.kakicolor),
          ),
        ],
      ),
    );
  }
}
