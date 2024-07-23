
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:home_services/Home_pages/Bottom_Navigation_Bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Home_pages/Splash_Screen.dart';
import 'otp.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
  static String verify="";
  static String mail="";


  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {


    signup() async {
      UserCredential ? usercredential;
      try {
        usercredential = await  FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: _emailcontroller.text, password: _passwordcontroller.text).then((value) async {
          var sharedPref = await SharedPreferences.getInstance();
          sharedPref.setBool(SplashScreen.KEYLOGIN, true);
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const MyVerify(),), (route) => false);
              EasyLoading.dismiss();

        },);

      }
      on FirebaseException catch(ex){
        EasyLoading.dismiss();
        return Fluttertoast.showToast(msg: "Email is already Used or something wants wrong try again..",textColor: Colors.white,backgroundColor: Colors.black,toastLength: Toast.LENGTH_SHORT,fontSize: 18);

      }
    }

    TextEditingController countryController = TextEditingController();
    var phone="";

    @override
    void initState() {
      // TODO: implement initState
      countryController.text = "+91";
      super.initState();
    }

    ok()async{
      await FirebaseAuth.instance.verifyPhoneNumber(phoneNumber: '${countryController.text+phone}',verificationCompleted: (PhoneAuthCredential credential){},
          verificationFailed: (FirebaseException e){}, codeSent: (String verificationId,  int? resendToken ){
        SignUpPage.verify=verificationId;
          }, codeAutoRetrievalTimeout: (String verificationId){});
    }

  bool _showPassword1=true;
  bool _showPassword2=true;
    Color _text1 = Colors.grey.shade200;
    Color _text2 = Colors.grey.shade200;
    Color _text3 = Colors.grey.shade200;
    Color _text4 = Colors.grey.shade200;

    final TextEditingController _emailcontroller =TextEditingController();
    final TextEditingController _passwordcontroller=TextEditingController();
    final TextEditingController _confirmpasswordcontroller =TextEditingController();
    final TextEditingController _phonenocontroller = TextEditingController();


    RegExp regex = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    RegExp regex1 = RegExp(r'[0-9]');
    RegExp regex2 = RegExp(
        r'^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[!@#\$&*~]).{8,}$');
    RegExp regex3 = RegExp('[a-zA-Z]');
    RegExp regex4 = RegExp('[0-9]');
    final _globekey = GlobalKey<FormState>();



    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      Form(
        key: _globekey,
        child: SingleChildScrollView(
            child: Column(children: [
              Container(
                height: 180,
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
                  padding: EdgeInsets.only(left: 20, right: 20, top: 60),
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
                        "Thanks for choosing us 😇",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60), topRight: Radius.circular(60))),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Create an Account",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21,
                                  color: Colors.blue)),

                        ],
                      ),
                      const SizedBox(
                        height: 20,
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

                            const Padding(
                              padding: EdgeInsets.only(top: 11.0,bottom: 8,left: 21),
                              child: Row(
                                children: [
                                  Text("Email Id*",style: TextStyle(fontSize: 18,)),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom:
                                      BorderSide(color: Colors.grey.shade200))),
                              child: TextFormField(
                                controller: _emailcontroller,
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return "Please enter email";
                                  }
                                  else if(!value.contains(regex)){
                                    return "Please enter valid email";
                                  }
                                  return null;
                                },
                                autovalidateMode: AutovalidateMode.onUserInteraction,

                                decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.email),
                                    hintText: "Enter your Email",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 11.0,bottom: 8,left: 21),
                              child: Row(
                                children: [
                                  Text("Create Password*",style: TextStyle(fontSize: 18,)),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom:
                                      BorderSide(color: Colors.grey.shade200))),
                              child: TextFormField(
                                controller :_passwordcontroller,

                                keyboardType: TextInputType.emailAddress,

                                maxLines: 1,
                                obscureText:_showPassword1,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                onChanged: (value) {
                                  setState(() {
                                    _text1 = value.length < 8 ? Colors.red.shade200 : Colors.green.shade300;
                                    _text2 = !value.contains(RegExp(r'[A-Z]'))
                                        ? Colors.red.shade200
                                        : Colors.green.shade300;
                                    _text4 = !value.contains(RegExp(r'[\-==@\.;$#]'))
                                        ? Colors.red.shade200
                                        : Colors.green.shade300;
                                    _text3 = !value.contains(RegExp(r'[0-9]'))
                                        ? Colors.red.shade200
                                        : Colors.green.shade300;
                                  });
                                },


                                decoration: InputDecoration(hintText: "Enter your Password",border:InputBorder.none,prefixIcon: const Icon(Icons.lock)

                                  ,suffixIcon: InkWell(
                                    onTap: () {
                                      setState(() {
                                        _showPassword1 =!  _showPassword1;


                                      });
                                    },

                                    child: Icon(
                                        _showPassword1 ? Icons.visibility_off : Icons
                                            .visibility),
                                  ),
                                ),

                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(color: _text1,borderRadius: BorderRadius.circular(6)),

                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text("8 Character",style: TextStyle(fontSize: 10,color: Colors.black)),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(color: _text2,borderRadius: BorderRadius.circular(6)),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text("1 Upper case",style: TextStyle(fontSize: 10,color: Colors.black)),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(color: _text3,borderRadius: BorderRadius.circular(6)),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text("1 Numeric",style: TextStyle(fontSize: 10,color: Colors.black)),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(color: _text4,borderRadius: BorderRadius.circular(6)),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text("1 Special Symbol",style: TextStyle(fontSize: 10,color: Colors.black)),
                                  ),
                                ),
                              ],
                            ),

                            const Padding(
                              padding: EdgeInsets.only(top: 11.0,bottom: 8,left: 21),
                              child: Row(
                                children: [
                                  Text("Re-Enter Password*",style: TextStyle(fontSize: 18,)),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom:
                                      BorderSide(color: Colors.grey.shade200))),
                              child: TextFormField(
                                controller :_confirmpasswordcontroller,
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return "Please re-enter Password";
                                  }
                                  if(value !=_passwordcontroller.text){
                                    return "Password not matched";
                                  }
                                  return null;
                                },
                                autovalidateMode: AutovalidateMode.onUserInteraction,


                                keyboardType: TextInputType.emailAddress,

                                maxLines: 1,
                                obscureText:_showPassword2,

                                decoration: InputDecoration(hintText: "Confirm Password",border:InputBorder.none,prefixIcon: const Icon(Icons.lock)

                                  ,suffixIcon: InkWell(
                                    onTap: () {
                                      setState(() {
                                        _showPassword2 =!  _showPassword2;


                                      });
                                    },
                                    child: Icon(
                                        _showPassword2 ? Icons.visibility_off : Icons
                                            .visibility),
                                  ),
                                ),

                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 11.0,bottom: 8,left: 21),
                              child: Row(
                                children: [
                                  Text("Contact Number*",style: TextStyle(fontSize: 18,)),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom:
                                      BorderSide(color: Colors.grey.shade200))),
                              child: TextFormField(
                                controller: _phonenocontroller,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please enter contact No";
                                  } else if (value.length!=10) {
                                    return "Please enter valid contact No";
                                  }
                                  return null;
                                },
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                                ],
                                keyboardType: TextInputType.phone,
                                maxLength: 10,
                                onChanged: (value) {
                                  phone=value;
                                },




                                decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.call),
                                    hintText: "Phone your Number",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: const Text(
                                "We will send an OTP on this Phone Number",
                                style: TextStyle(fontSize: 15),
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
                          if (_globekey.currentState!.validate()) {

                          ok();
                          signup();
                          EasyLoading.show(indicator: Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Image.asset("assets/images/ruko-zaea-sabr-kro-nabeel-ruko-zara-sabar-karo-meme.gif",height: 180,width: 180,)
                              ],
                            ),
                          ));
                          SignUpPage.mail = _emailcontroller.text.toString();
                          }
                        },   height: 50,
                        // margin: EdgeInsets.symmetric(horizontal: 50),
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        // decoration: BoxDecoration(
                        // ),
                        child: const Center(
                          child: Text(
                            "Get OTP",
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
