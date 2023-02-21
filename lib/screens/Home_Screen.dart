import 'package:bookingapp/Ticket_View.dart';
import 'package:bookingapp/screens/Hotel_screens.dart';
import 'package:bookingapp/uttils/app_info_list.dart';
import 'package:bookingapp/uttils/app_styles.dart';
import 'package:bookingapp/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeSreen extends StatelessWidget {
  const HomeSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.bgcolor,
      // backgroundColor: const Color(0xFFeeedf2),
      body: ListView(
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        // ignore: prefer_const_constructors
                        Text(
                          'Good Morning',
                          style:
                              const TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        Gap(5),
                        const Text(
                          'Book Tickets',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/flight.png')),
                          color: Colors.blueGrey),
                    )
                  ],
                ),
                Gap(25),
                // ignore: avoid_unnecessary_containers
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFF4F6FD)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205)),
                      Text(
                        'Search',
                        style: styles.headlineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(40),
              // ignore: prefer_const_constructors
              DoubleText(bigText: 'Upcoming Flights', smallText: 'View All')
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: ticketlist.map((singleticket) => TicketView(ticket: singleticket)).toList()
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:const DoubleText(bigText: 'Hotels', smallText: 'View All')
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding:const EdgeInsets.only(left: 20),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children:hotelList.map((singlehotel) => HotelScreen(hotel: singlehotel)).toList()
            ),
          ),
      
        ],
      ),
    );
  }
}
