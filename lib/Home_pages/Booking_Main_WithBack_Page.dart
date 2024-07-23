import 'package:flutter/material.dart';

import '../Booking_Page/Booking_Active_Page.dart';
import '../Booking_Page/Booking_History_Page.dart';
import 'Bottom_Navigation_Bar.dart';

class BookingMainBack extends StatefulWidget {
  const BookingMainBack({super.key});

  @override
  State<BookingMainBack> createState() => _BookingMainBackState();
}

class _BookingMainBackState extends State<BookingMainBack> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      animationDuration: const Duration(milliseconds: 400),
      length: 2,
      child: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                leading: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back_rounded,color: Colors.black,size: 28,)),
                title: const Text("Bookings",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
                backgroundColor: Colors.white,
                bottom: const TabBar(
                  automaticIndicatorColorAdjustment: false,
                  dividerColor: Colors.black,
                  indicatorColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Text("Active",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    Text("History",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              body: const TabBarView(children: [
                BookingActivePage(),
                BookingHistoryPage()

              ]))),
    );
  }
}
