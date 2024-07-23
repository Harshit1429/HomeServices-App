import 'package:flutter/material.dart';
import 'package:home_services/Booking_Page/Booking_Active_Page.dart';
import 'package:home_services/Booking_Page/Booking_History_Page.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      animationDuration: const Duration(milliseconds: 400),
      length: 2,
      child: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
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
