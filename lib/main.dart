import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:home_services/Login_signup_Pages/Login_Page.dart';

import 'Account_Page/Fav_Main_Page.dart';
import 'Home_pages/Home_Services_List/Plumbers_list.dart';
import 'Home_pages/LogIn_MainScreen_Page.dart';
import 'Home_pages/Main_home_screen.dart';
import 'Home_pages/Splash_Screen.dart';
import 'Search_Page/Search_Main_Page.dart';




Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyB8yHAhY7XqTGdT0n8mI6qB9amtqoOK9_4",
          appId: "1:410865812642:android:2b0f79bfb49ecfc96bc3fb",
          messagingSenderId: "410865812642",
          projectId: "zlmhomeservices"));
  runApp( MaterialApp(
    home: const SplashScreen(),
    builder: EasyLoading.init(),
    debugShowCheckedModeBanner: false,
  ));
}
