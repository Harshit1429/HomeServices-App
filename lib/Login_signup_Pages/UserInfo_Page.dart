import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Home_pages/Bottom_Navigation_Bar.dart';
import '../Home_pages/Splash_Screen.dart';

class InfoUser extends StatefulWidget {
  const InfoUser({super.key});
  static String userName="";
  static String userAdd="";

  @override
  State<InfoUser> createState() => _InfoUserState();
}

class _InfoUserState extends State<InfoUser> {
  final TextEditingController name =TextEditingController();
  final TextEditingController address=TextEditingController();

  GlobalKey<FormState> key=GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: key,
        child: SingleChildScrollView(
            child: Column(children: [
              Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60)),
                    gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                      Colors.black.withAlpha(25),
                      Colors.black.withAlpha(25),
                      Colors.black.withAlpha(25)
                    ])),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Zlm Home Services 💫",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 31,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Thanks for choosing us",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 600,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60), topRight: Radius.circular(60))),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Enter Information's",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.blue)),

                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(225, 95, 27, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10))
                            ]),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom:
                                      BorderSide(color: Colors.grey.shade200))),
                              child: TextFormField(
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return "Please enter name";
                                  }
                                  return null;

                                },
                                controller: name,
                                decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.person),
                                    hintText: "Enter Full Name",
                                    labelText: "Full Name",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom:
                                      BorderSide(color: Colors.grey.shade200))),
                              child: TextFormField(
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return "Please enter address";
                                  }
                                  return null;

                                },
                                controller: address,

                                keyboardType: TextInputType.emailAddress,

                                maxLines: 1,

                                decoration: const InputDecoration(hintText: "Address",labelText: "Enter Address",border: InputBorder.none,prefixIcon: Icon(Icons.location_on_outlined)
                                ),

                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 40,
                      ),
                      MaterialButton(
                        onPressed: () async {
                          if(key.currentState!.validate())
                          {
                            //Create a Map with the input data
                            Map<String,String> dataToSave={
                              'name':name.text,
                              'address':address.text
                            };


                            //Add the data to the database
                            CollectionReference reference=FirebaseFirestore.instance.collection('users');
                            var sharedPref = await SharedPreferences.getInstance();
                            sharedPref.setBool(SplashScreen.KEYLOGIN, true);
                            try {
                              EasyLoading.show(indicator: Container(
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/welcome.gif",height: 180,width: 180,)
                                  ],
                                ),
                              ));
                              await reference.add(dataToSave);


                              if(!mounted) return;
                              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const BottomBar(),), (route) => false);
                              EasyLoading.dismiss();
                              InfoUser.userName = name.text.toString();
                              InfoUser.userAdd = address.text.toString();
                            }catch (error)
                            {
                              EasyLoading.dismiss();

                              Fluttertoast.showToast(msg: "Something wants Wrong try again");
                            }
                          }


                        },
                        height: 50,
                        // margin: EdgeInsets.symmetric(horizontal: 50),
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        // decoration: BoxDecoration(
                        // ),
                        child: const Center(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              )
            ])),
      ),
      backgroundColor: Colors.black,
    );
  }
}
