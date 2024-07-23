import 'package:flutter/material.dart';
import 'package:home_services/Account_Page/Fav_Main_Page.dart';
import 'package:home_services/Booking_Page/Booking_Main_Page.dart';
import 'package:home_services/Home_pages/Booking_Main_WithBack_Page.dart';
import 'package:home_services/Home_pages/Notification_Page.dart';
import 'package:home_services/User_Model/index.dart';
import 'AboutUs_Page.dart';
import 'Customer_care_Page.dart';
import 'My_Profile_Page.dart';


class ShowAccountInfo extends StatefulWidget {
  const ShowAccountInfo({super.key});

  @override
  State<ShowAccountInfo> createState() => _ShowAccountInfoState();
}

class _ShowAccountInfoState extends State<ShowAccountInfo> {

   int commingindex = Myindexes.accountindex;

  final screens=[
    const MyProfile(),
     const FavMainPage(),
     const NotificationPage(),
    const BookingMainBack(),
     const CustomerCareMain(),
    const AboutUs()

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: screens[commingindex],
      extendBody: true,
    ));
  }
}
