import 'package:animate_do/animate_do.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:home_services/Home_pages/Splash_Screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../WithoutLogIn_User/BottomNavigationBar_User.dart';
import 'SidnUp_Page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  login()async{
  UserCredential ? usercredential;
  try{
    usercredential=   await  FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text, password: _passwordController.text).then((value){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomBarWithoutSignIn(),));
      EasyLoading.dismiss();
    });

  }
  on FirebaseException catch(ex){
    EasyLoading.dismiss();

    return Fluttertoast.showToast(msg: "Invalid User Or Password... Please Try Again",textColor: Colors.white,backgroundColor: Colors.black,toastLength: Toast.LENGTH_SHORT,fontSize: 18);



    //showDialog(context: context, builder: (context) {
      //return Text(ex.code.toString());
    //});
  }
  }
  bool _showPassword1=true;
  bool loading =false;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                  "Welcome's you Back",
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
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.blue)),
                    TextButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const BottomBarWithoutSignIn(),), (route) => false);
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    )
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
                          controller: _emailController,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email),
                              hintText: "Email or Phone number",
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
                          controller :_passwordController,

                          keyboardType: TextInputType.emailAddress,

                          maxLines: 1,
                          obscureText:_showPassword1,

                          decoration: InputDecoration(hintText: "Enter your Password",border:InputBorder.none,prefixIcon: const Icon(Icons.lock)

                            ,suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  _showPassword1 =!  _showPassword1;


                                });
                              },
                              child: Icon(
                                _showPassword1 ? Icons.visibility : Icons
                                    .visibility_off),
                            ),
                          ),

                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.black87),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                 Row(
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpPage(),));
                      },
                      child: const Text(
                        " Sign up",
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                MaterialButton(
                  onPressed: () async {
                    login();
                    EasyLoading.show(indicator: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Image.asset("assets/images/mimibubu.gif",height: 180,width: 180,)
                        ],
                      ),
                    ));
                    var sharedPref = await SharedPreferences.getInstance();
                    sharedPref.setBool(SplashScreen.KEYLOGIN, true);
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
                      "Login",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                FadeInUp(
                    duration: const Duration(milliseconds: 1700),
                    child: const Text(
                      "Continue with social media",
                      style: TextStyle(color: Colors.grey),
                    )),
                const SizedBox(
                  height: 30,
                ),
                Row(children: <Widget>[
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {},
                      height: 50,
                      color: Colors.black54,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Center(
                        child: Text(
                          "Facebook",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {},
                      height: 50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Colors.black54,
                      child: const Center(
                        child: Text(
                          "Github",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ])
              ],
            ),
          ),
        )
      ])),
      backgroundColor: Colors.black,
    );
  }
}