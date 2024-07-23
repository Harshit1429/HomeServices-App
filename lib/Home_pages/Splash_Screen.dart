import 'dart:async';
import 'package:flutter/material.dart';
import 'package:home_services/Home_pages/Bottom_Navigation_Bar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Login_signup_Pages/Login_Page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String KEYLOGIN = "Login";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    whereToGo();

    super.initState();
  }

  void whereToGo() async{
    var sharedPref = await SharedPreferences.getInstance();
    var isLoggedIn = sharedPref.getBool(SplashScreen.KEYLOGIN);
    var isSignedIN = sharedPref.getBool(SplashScreen.KEYLOGIN);

    Timer(const Duration(seconds: 2), () {

      if(isLoggedIn != null){
        if(isLoggedIn){
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const BottomBar()),
                  (route) => false);
        } else {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
                  (route) => false);
        }
      } else {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
                (route) => false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        body: Center(child: Image.asset("assets/images/hv89vxNsQbaSJ89M2kTPhw.png",height: 250,),
        ));
  }
}
