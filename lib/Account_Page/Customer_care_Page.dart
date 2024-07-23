import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomerCareMain extends StatefulWidget {
  const CustomerCareMain({super.key});

  @override
  State<CustomerCareMain> createState() => _CustomerCareMainState();
}

class _CustomerCareMainState extends State<CustomerCareMain> {


  // sharePressed() async {
  //   String massage = "One and only my Zlm";
  //   Share.share(massage);
  //
  // }

  final Uri _url = Uri.parse('https://flutter.dev');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }



  Future pickImage() async {
    await ImagePicker().pickImage(source: ImageSource.camera,);
    await ImagePicker().pickImage(source: ImageSource.gallery,);
  }

 // Uri dialnumber = Uri(path: '5456236523',scheme: "tel");
 //  _callNumber() async{
 //    const number = '0859211945'; //set the number here
 //    bool? res = await FlutterPhoneDirectCaller.callNumber(number);
 //  }
//Uri Call = Uri(path: "45698256321",scheme: "tel");
 callnumber()async{
   Uri dialnumber = Uri(path: '5456236523',scheme: 'tel');
   await launchUrl(dialnumber);
  }
  smsnumber()async{
    Uri dialnumber = Uri(path: '5456236523',scheme: 'sms');
    await launchUrl(dialnumber);
  }
  email()async{
    Uri dialnumber = Uri(path: 'harshitsharma1429@gmail.com',scheme: 'mailto');
    await launchUrl(dialnumber);
  }
  // website()async{
  //   Uri dialnumber = Uri(path: 'https://flutter.dev	',scheme: 'https');
  //   await launchUrl(dialnumber);
  // }
  @override
  Widget build(BuildContext context) {
    return   SafeArea(child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back,size: 30,color: Colors.black)),
          title: const Text("Help Center",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body:  Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 11.0),
              child: Text("Contact Us for any query : ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,decoration: TextDecoration.underline)),
            ),
    Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: TextButton(

    onPressed:
    callnumber,


            child: const Card(
              child: Column(
              children: [
              Padding(
              padding: EdgeInsets.only(top: 18.0,bottom: 11),
              child: CircleAvatar(
              maxRadius: 65,
              backgroundImage: AssetImage("assets/images/OIP (1).jpeg",),
              ),
              ),
                Padding(
                  padding: EdgeInsets.only(bottom: 11.0),
                  child: Text(" Call Us 📞",style: TextStyle(color: Colors.black87,fontSize: 18,fontWeight: FontWeight.bold),),
                )

                       ]
                  ),
            ),
          ),
        ),
        TextButton(
          onPressed: smsnumber,
          child: const Card(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 18.0,bottom: 11),
                  child: CircleAvatar(
                    maxRadius: 65,
                    backgroundImage: AssetImage("assets/images/massage.jpeg",),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 11.0),
                  child: Text(" Massage 📲 ",style: TextStyle(color: Colors.black87,fontSize: 18,fontWeight: FontWeight.bold),),
                )

              ],
    ),
          ),
        )
        ]
    ),
            Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: TextButton(
                      onPressed: email,
                      child: const Card(
                        child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 18.0,bottom: 11),
                                child: CircleAvatar(
                                  maxRadius: 65,
                                  backgroundImage: AssetImage("assets/images/email-logo.jpg",),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 11.0),
                                child: Text(" Email Us ",style: TextStyle(color: Colors.black87,fontSize: 18,fontWeight: FontWeight.bold),),
                              )

                            ]
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: _launchUrl,
                    child: const Card(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 18.0,bottom: 11),
                            child: CircleAvatar(
                              maxRadius: 65,
                              backgroundImage: AssetImage("assets/images/YT-Playlists@1x-500x500.png",),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 11.0),
                            child: Text(" WebSite ",style: TextStyle(color: Colors.black87,fontSize: 18,fontWeight: FontWeight.bold),),
                          )

                        ],
                      ),
                    ),
                  )
                ]
            ),
        ]
    )
    ));
  }

}