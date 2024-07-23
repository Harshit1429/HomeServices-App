import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

import '../User_Model/User_Model.dart';

class SearchMainPage extends StatefulWidget {
  const SearchMainPage({super.key});

  @override
  State<SearchMainPage> createState() => _SearchMainPageState();
}

class _SearchMainPageState extends State<SearchMainPage> {
  TextEditingController textController = TextEditingController();
  List<UserModel> user = [
    UserModel(
      images: "assets/images/IMG-20240311-WA0005.jpg",
      images1: "assets/images/Screenshot 2024-03-12 134815.png",
      images2: "assets/images/pipe-wrench-icon-vector-17044921.jpg",
      images3: "assets/images/IMG-20240311-WA0003.jpg",
      text: "Plumbers",
      text1: "Expert in plumbing works",
      text2: "Home Interior",
      images4: "assets/images/IMG-20240311-WA0013.jpg",
      text3: "Pest Control",
    ),
    UserModel(
      images: "assets/images/IMG-20240311-WA0008.jpg",
      images1: "assets/images/Screenshot 2024-03-12 134855.png",
      images2: "assets/images/electrician-icon-vector-3035786.jpg",
      images3: "assets/images/IMG-20240311-WA0010.jpg",
      text: "Electricians",
      text1: "Expert in electrical works",
      text2: "Modular Kitchen",
      images4: "assets/images/IMG-20240311-WA0011.jpg",
      text3: "Full House Cleaning",
    ),
    UserModel(
      images: "assets/images/IMG-20240311-WA0007.jpg",
      images1: "assets/images/Screenshot 2024-03-12 134944.png",
      images2: "assets/images/OIP.jpeg",
      images3: "assets/images/IMG-20240311-WA0009.jpg",
      text: "Paintings",
      text1: "Expert in painting works",
      text2: "Commercial Buildings",
      images4: "assets/images/IMG-20240311-WA0012.jpg",
      text3: "Kitchen & Bathroom Cleaning",
    ),
    UserModel(
      images: "assets/images/IMG-20240311-WA0006.jpg",
      images1: "assets/images/Screenshot 2024-03-12 135017.png",
      images2: "assets/images/Screenshot 2024-03-12 125242.png",
      images3: "assets/images/IMG-20240311-WA0004.jpg",
      text: "Carpenters",
      text1: "Expert in Carpenting works",
      text2: "Office Interior",
      images4: "",
      text3: "",
    ),
    UserModel(
      images: "assets/images/Screenshot 2024-03-15 231419.png",
      images1: "assets/images/Screenshot 2024-03-12 135235.png",
      images2: "assets/images/Screenshot 2024-03-12 125759.png",
      images3: "",
      text: "Car repairing",
      text1: "Expert in car repairing works",
      text2: "",
      images4: "",
      text3: "",
    ),
    UserModel(
      images: "assets/images/Screenshot 2024-03-15 231520.png",
      images1: "assets/images/Screenshot 2024-03-12 135104.png",
      images2: "assets/images/Screenshot 2024-03-12 125531.png",
      images3: "",
      text: "Home Cleaning",
      text1: "Good in house cleaning works",
      text2: "",
      images4: "",
      text3: "",
    ),
    UserModel(
      images: "assets/images/Screenshot 2024-03-15 231454.png",
      images1: "assets/images/Screenshot 2024-03-12 135128.png",
      images2: "assets/images/Screenshot 2024-03-12 125612.png",
      images3: "",
      text: "Car Washers",
      text1: "Expert in car washing ",
      text2: "",
      images4: "",
      text3: "",
    ),
    UserModel(
      images: "assets/images/Screenshot 2024-03-12 125705.png",
      images1: "assets/images/Screenshot 2024-03-12 135349.png",
      images2: "assets/images/Screenshot 2024-03-12 125705.png",
      images3: "",
      text: "Car experts",
      text1: "Expert in car works",
      text2: "",
      images4: "",
      text3: "",
    ),
  ];

  Future clickImage() async {
    await ImagePicker().pickImage(
      source: ImageSource.camera,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Search",
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: clickImage,
              child: const Icon(Icons.camera_alt_rounded,
                  color: Colors.black87, size: 30)),
          TextButton(
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "MicroPhone Coming Soon...",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 18.0);
              },
              child: const Icon(Icons.mic, color: Colors.black87, size: 30)),
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, bottom: 11, right: 8, left: 8),
              child: TextFormField(
                controller: textController,
                onChanged: (String value) {
                  setState(() {

                  });
                },
                decoration: InputDecoration(
                  hintText: "Search for services",
                  suffixIcon: const Padding(
                    padding: EdgeInsets.only(right: 11.0),
                    child: Icon(Icons.search),
                  ),
                  fillColor: Colors.black12,
                  filled: true,
                  suffixIconColor: Colors.black,
                  hintStyle: const TextStyle(fontSize: 18, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
            ListView.builder(
              itemBuilder: (context, index) {
                if(textController.text.isEmpty){
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(

                          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(user[index].images),fit: BoxFit.fill)

                          ),
                          height: 160,
                          width: 130,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 11.0),
                        child: Column(
                          children: [
                            Text(user[index].text,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(user[index].text1),
                            )
                          ],
                        ),
                      )
                    ],
                  );
                }
                else if(user[index].text.toLowerCase().contains(textController.text.toLowerCase().toLowerCase())){
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(

                          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(user[index].images),fit: BoxFit.fill)

                          ),
                          height: 160,
                          width: 130,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 11.0),
                        child: Column(
                          children: [
                            Text(user[index].text,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(user[index].text1),
                            )
                          ],
                        ),
                      )
                    ],
                  );

                }
                else{
                  return Container();
                }
              },
              itemCount: 8,
              shrinkWrap: true,
              controller: ScrollController(keepScrollOffset: false),
            )
          ],
        ),
      ),
    ));
  }
}
