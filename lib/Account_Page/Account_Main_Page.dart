import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_services/Login_signup_Pages/SidnUp_Page.dart';
import 'package:home_services/Login_signup_Pages/UserInfo_Page.dart';
import 'package:home_services/User_Model/index.dart';

import 'Page_Show_Index.dart';

class AccountMainPage extends StatefulWidget {
  const AccountMainPage({super.key});

  @override
  State<AccountMainPage> createState() => _AccountMainPageState();
}

class _AccountMainPageState extends State<AccountMainPage> {
  List<IconData> icons = [Icons.person ,CupertinoIcons.heart_fill,CupertinoIcons.bell_fill,Icons.calendar_month, CupertinoIcons.money_dollar_circle_fill, Icons.help_center_outlined, Icons.local_offer,Icons.info];
  List<String> texts = [' My Profile       ✏️  ', 'MY Favourites', 'Notification','My Bookings','Refer and earn','Help Center','Offers And Coupons','About Us'];
  

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 11.0,bottom: 21),
          child: Column(
            children: [
               Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text("Account",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),
                      const Padding(
                        padding: EdgeInsets.only(top: 15.0,bottom: 15),
                        child: CircleAvatar(
                          maxRadius: 50,
                          backgroundColor: Colors.blueAccent,
                          child: Icon(Icons.person,color: Colors.black,size: 50),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 7.0),
                        child: Text(InfoUser.userName,style: TextStyle(color: Colors.black,fontSize: 21,fontWeight: FontWeight.bold)),
                      ),
                      Text(SignUpPage.mail,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),


                    ],
                  ),
                ],
              ),
              ListView.builder(itemBuilder: (context, index) {
                return  Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        onTap: () {
                          Myindexes.accountindex = index;
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ShowAccountInfo(),));
                        },

                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: Icon(icons[index],size: 30),
                            ),
                            Text(texts[index],style: const TextStyle(fontSize: 18)),
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
              shrinkWrap: true,
                controller: ScrollController(keepScrollOffset: false),
                itemCount: 8,
              )

          ],
          ),
        ),
      ),
    ));
  }
}
