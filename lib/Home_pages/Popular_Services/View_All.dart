import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../User_Model/User_Model.dart';
import '../../User_Model/index.dart';
import '../Home_Services_List/View_All_Pages.dart';
import 'View_All_List.dart';

class PopularViewAll extends StatefulWidget {
  const PopularViewAll({super.key});

  @override
  State<PopularViewAll> createState() => _PopularViewAllState();
}

class _PopularViewAllState extends State<PopularViewAll> {
  List<UserModel> user = [

    UserModel(
      images:
      "assets/images/IMG-20240311-WA0005.jpg",
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
      images:
      "assets/images/IMG-20240311-WA0008.jpg",
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
      images:
      "assets/images/IMG-20240311-WA0007.jpg",
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
      images:
      "assets/images/IMG-20240311-WA0006.jpg",
      images1: "assets/images/Screenshot 2024-03-12 135017.png",
      images2: "assets/images/Screenshot 2024-03-12 125242.png",
      images3: "assets/images/IMG-20240311-WA0004.jpg",
      text: "Carpenters",
      text1: "Expert in Carpeting works",
      text2: "Office Interior",
      images4: "",
      text3: "",
    ),
    UserModel(
      images:
      "assets/images/cln 1.jpeg",
      images1: "assets/images/Screenshot 2024-03-12 135017.png",
      images2: "assets/images/Screenshot 2024-03-12 125242.png",
      images3: "assets/images/IMG-20240311-WA0004.jpg",
      text: "Cleaning",
      text1: "Expert in Carpeting works",
      text2: "Office Interior",
      images4: "",
      text3: "",
    ),
    UserModel(
      images:
      "assets/images/ccln 1.jpeg",
      images1: "assets/images/Screenshot 2024-03-12 135017.png",
      images2: "assets/images/Screenshot 2024-03-12 125242.png",
      images3: "assets/images/IMG-20240311-WA0004.jpg",
      text: "Car Washing",
      text1: "Expert in Carpeting works",
      text2: "Office Interior",
      images4: "",
      text3: "",
    ),
    UserModel(
      images:
      "assets/images/dpet 1.jpeg",
      images1: "assets/images/Screenshot 2024-03-12 135017.png",
      images2: "assets/images/Screenshot 2024-03-12 125242.png",
      images3: "assets/images/IMG-20240311-WA0004.jpg",
      text: "Pet Dr.",
      text1: "Expert in Carpeting works",
      text2: "Office Interior",
      images4: "",
      text3: "",
    ),



    UserModel(
      images:
      "assets/images/Screenshot 2024-03-12 125705.png",
      images1: "assets/images/Screenshot 2024-03-12 135349.png",
      images2: "assets/images/Screenshot 2024-03-12 125705.png",
      images3: "",
      text: "Car experts",
      text1: "Expert in car works",
      text2: "",
      images4: "",
      text3: "",
    ),
    UserModel(
      images:
      "assets/images/con 1.jpeg",
      images1: "assets/images/Screenshot 2024-03-12 134815.png",
      images2: "assets/images/pipe-wrench-icon-vector-17044921.jpg",
      images3: "assets/images/IMG-20240311-WA0003.jpg",
      text: "Construction",
      text1: "Expert in plumbing works",
      text2: "Home Interior",
      images4: "assets/images/IMG-20240311-WA0013.jpg",
      text3: "Pest Control",


    ),
    UserModel(
      images:
      "assets/images/arc 1.jpeg",
      images1: "assets/images/Screenshot 2024-03-12 134855.png",
      images2: "assets/images/electrician-icon-vector-3035786.jpg",
      images3: "assets/images/IMG-20240311-WA0010.jpg",
      text: "Architects",
      text1: "Expert in electrical works",
      text2: "Modular Kitchen",
      images4: "assets/images/IMG-20240311-WA0011.jpg",
      text3: "Full House Cleaning",
    ),
    UserModel(
      images:
      "assets/images/int 1.jpeg",
      images1: "assets/images/Screenshot 2024-03-12 134944.png",
      images2: "assets/images/OIP.jpeg",
      images3: "assets/images/IMG-20240311-WA0009.jpg",
      text: "Interior",
      text1: "Expert in painting works",
      text2: "Commercial Buildings",
      images4: "assets/images/IMG-20240311-WA0012.jpg",
      text3: "Kitchen & Bathroom Cleaning",
    ),
    UserModel(
      images:
      "assets/images/fun 1.jpeg",
      images1: "assets/images/Screenshot 2024-03-12 135017.png",
      images2: "assets/images/Screenshot 2024-03-12 125242.png",
      images3: "assets/images/IMG-20240311-WA0004.jpg",
      text: "Furniture",
      text1: "Expert in Carpeting works",
      text2: "Office Interior",
      images4: "",
      text3: "",
    ),
    UserModel(
      images:
      "assets/images/eng 1.jpg",
      images1: "assets/images/Screenshot 2024-03-12 135017.png",
      images2: "assets/images/Screenshot 2024-03-12 125242.png",
      images3: "assets/images/IMG-20240311-WA0004.jpg",
      text: "Contractors",
      text1: "Expert in Carpeting works",
      text2: "Office Interior",
      images4: "",
      text3: "",
    ),
    UserModel(
      images:
      "assets/images/dec 1.jpeg",
      images1: "assets/images/Screenshot 2024-03-12 135017.png",
      images2: "assets/images/Screenshot 2024-03-12 125242.png",
      images3: "assets/images/IMG-20240311-WA0004.jpg",
      text: "Decor Items",
      text1: "Expert in Carpeting works",
      text2: "Office Interior",
      images4: "",
      text3: "",
    ),
    UserModel(
      images:
      "assets/images/til 1.jpeg",
      images1: "assets/images/Screenshot 2024-03-12 135017.png",
      images2: "assets/images/Screenshot 2024-03-12 125242.png",
      images3: "assets/images/IMG-20240311-WA0004.jpg",
      text: " Tiles ",
      text1: "Expert in Carpeting works",
      text2: "Office Interior",
      images4: "",
      text3: "",
    ),



    UserModel(
      images:
      "assets/images/win 1.jpeg",
      images1: "assets/images/Screenshot 2024-03-12 135349.png",
      images2: "assets/images/Screenshot 2024-03-12 125705.png",
      images3: "",
      text: "Windows",
      text1: "Expert in car works",
      text2: "",
      images4: "",
      text3: "",
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return    SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_rounded,color: Colors.black,size: 30)),
          title: const Text(" Popular Services 📋 ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/Screenshot 2024-03-15 085056.png"),
                          fit: BoxFit.fill
                      )
                  )
              ),
              ListView.builder(itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Myindexes.viewallpop = index;
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewAllListPopular(),));

                  },
                  child: Row(children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child:     Container(
                              height: 200,
                              width: 160,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(user[index].images),
                                      fit: BoxFit.fill
                                  )
                              )
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Column(
                        children: [
                          Text(user[index].text,style: const TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    )
                  ],),
                );
              },shrinkWrap: true,itemCount: user.length,scrollDirection: Axis.vertical,controller: ScrollController(keepScrollOffset: true),),
            ],
          ),
        ),
      ),
    );
  }
}
