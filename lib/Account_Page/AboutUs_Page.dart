import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back,size: 30,color: Colors.black)),
        title: const Text("About Us",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body:  Padding(
        padding: const EdgeInsets.only(top: 21.0,left: 15,right: 15),
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "Our Website Service is Coming Soon...",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 18.0
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(" Our Website ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)),
                  Icon(Icons.arrow_forward_ios,color: Colors.black,)
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "Our Privacy Policy Uploading Coming Soon...",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 18.0
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(" Privacy & Policy ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)),
                  Icon(Icons.arrow_forward_ios,color: Colors.black,)
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Fluttertoast.showToast(
                    msg: " Coming Soon...",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 18.0
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(" Terms of use ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)),
                  Icon(Icons.arrow_forward_ios,color: Colors.black,)
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Fluttertoast.showToast(
                    msg: " Coming Soon...",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 18.0
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(" Upcoming Features ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)),
                  Icon(Icons.arrow_forward_ios,color: Colors.black,)
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Fluttertoast.showToast(
                    msg: " Coming Soon...",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 18.0
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(" Suggestion for us  ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18)),
                  Icon(Icons.arrow_forward_ios,color: Colors.black,)
                ],
              ),
            ),
          ],
        ),
      ),

    ));
  }
}
