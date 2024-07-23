import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {


 // final FirebaseStorage _storage = FirebaseStorage.instance;


 File? _image;
  final picker  = ImagePicker();
  Future pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery,);
    setState(() {
      if(pickedFile != null ){
        _image = File(pickedFile.path);

      }
    });
  }
  // Future clickImage() async {
  //   await ImagePicker().pickImage(source: ImageSource.camera,);
  // }
 // firebase_storage.FirebaseStorage storage = firebase_storage.FirebaseStorage.instance;
 // firebase_storage.FirebaseStorage ref = firebase_storage.FirebaseStorage.instance.ref('/imagescoming'+'1224') as firebase_storage.FirebaseStorage;
 // firebase_storage.UploadTask uploadTask = ref.putFile(_image!.absolute);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("My Profile",
            style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        leading:
             InkWell(
                 onTap: () {
                   Navigator.pop(context);
                 },
                 child: const Icon(Icons.arrow_back_rounded, color: Colors.black, size: 30)),
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0, bottom: 21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _image != null? CircleAvatar(


                      backgroundImage: FileImage(_image!.absolute),maxRadius: 60,

                  ):
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/hv89vxNsQbaSJ89M2kTPhw.png"),
                    maxRadius: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 95.0),
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.black54),
                        child: TextButton(
                          onPressed: () {
                            pickImage();
                            // firebase_storage.FirebaseStorage ref = firebase_storage.FirebaseStorage.instance.ref('/imagescoming'+'1224') as firebase_storage.FirebaseStorage;
                          }, child: const Icon(Icons.flip_camera_ios,color: Colors.white),
                        )
                  ),
                  )
                ],
              ),
            ),
             const Padding(
               padding: EdgeInsets.only(top: 11,bottom: 11,left: 21),
               child: Column(
                 children: [
                   Row(
                     children: [
                       Text("My Profile",
                           style: TextStyle(
                               color: Colors.black,
                               fontSize: 18,
                               fontWeight: FontWeight.bold)),
                        Padding(
                          padding: EdgeInsets.only(left: 11.0),
                          child: Icon(Icons.edit),
                        )
                     ],
                   ),

               Padding(
                 padding: EdgeInsets.only(top: 21.0),
                 child: Row(
                   children: [
                     Text("Personal Information",
                         style: TextStyle(
                             color: Colors.black,
                             fontSize: 18,
                             fontWeight: FontWeight.bold)),
                     Padding(
                       padding: EdgeInsets.only(left: 11.0),
                       child: Icon(Icons.info),
                     )

                   ],
                 ),
               ),
                   Padding(
                     padding: EdgeInsets.only(top: 21.0),
                     child: Row(
                       children: [
                         Text("Privacy & Security",
                             style: TextStyle(
                                 color: Colors.black,
                                 fontSize: 18,
                                 fontWeight: FontWeight.bold)),
                         Padding(
                           padding: EdgeInsets.only(left: 11.0),
                           child: Icon(Icons.security),
                         )

                       ],
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.only(top: 21.0),
                     child: Row(
                       children: [
                         Text("Your Status",
                             style: TextStyle(
                                 color: Colors.black,
                                 fontSize: 18,
                                 fontWeight: FontWeight.bold)),
                         Padding(
                           padding: EdgeInsets.only(left: 11.0),
                           child: Icon(Icons.stacked_line_chart),
                         )

                       ],
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.only(top: 21.0),
                     child: Row(
                       children: [
                         Text("About Us",
                             style: TextStyle(
                                 color: Colors.black,
                                 fontSize: 18,
                                 fontWeight: FontWeight.bold)),
                         Padding(
                           padding: EdgeInsets.only(left: 11.0),
                           child: Icon(Icons.info_outline_sharp),
                         )

                       ],
                     ),
                   )
      ]
               ),
             )
          ],
        ),
      ),
    ));
  }
}
