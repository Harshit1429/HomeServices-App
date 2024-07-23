import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Account_Page/Page_Show_Index.dart';
import '../Login_signup_Pages/Login_Page.dart';
import '../User_Model/index.dart';

class AccountSignIn extends StatefulWidget {
  const AccountSignIn({super.key});

  @override
  State<AccountSignIn> createState() => _AccountSignInState();
}

class _AccountSignInState extends State<AccountSignIn> {

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
                      Text("Account",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),
                      const Padding(
                        padding: EdgeInsets.only(top: 15.0,bottom: 15),
                        child: CircleAvatar(
                          maxRadius: 50,
                          backgroundColor: Colors.blueAccent,
                          child: Icon(Icons.person,color: Colors.black,size: 50),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 7.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage(),));
                        },
                        child: Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.blue,borderRadius: BorderRadius.circular(25)
                            ),
                            child: Center(child: Text("Log In & Sign Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)))),
                        ),
                      )

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
