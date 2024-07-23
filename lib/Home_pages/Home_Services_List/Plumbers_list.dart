import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../User_Model/Fav_UserModel.dart';

class HomeServicesList extends StatefulWidget {
  const HomeServicesList({super.key});

  @override
  State<HomeServicesList> createState() => _HomeServicesListState();
}

class _HomeServicesListState extends State<HomeServicesList> {

  List<FavUserModel> lists=[
    FavUserModel(
        images: "assets/images/plumber 1.jpeg",
        text: "Raj Singh",
        text1: " Plumber ",
        text2: "⭐ 4.5",
        text3: "Rs.350/hr",
        text4: " 💟 "
    ),
    FavUserModel(
        images: "assets/images/plumber 2.jpeg",
        text: " Aditya kumar ",
        text1: " plumber & Helper ",
        text2: "⭐ 3.5",
        text3: "Rs.200/hr",
        text4: " 💟 "
    ),
    FavUserModel(
        images: "assets/images/plumber 3.jpg",
        text: "Ramesh Services",
        text1: "Plumbers",
        text2: "⭐ 4.5",
        text3: "Rs.300/hr",
        text4: " 💟 "
    ),
    FavUserModel(
        images: "assets/images/plumber 4.jpg",
        text: "ZK Workings ",
        text1: " Plumbers & Workers  ",
        text2: "⭐ 4.0",
        text3: "Rs.250/hr",
        text4: " 💟 "
    ),
    FavUserModel(
        images: "assets/images/plumber 5.jpeg",
        text: "Laxmi services",
        text1: " Plumbing expert ",
        text2: "⭐ 4.5",
        text3: "Rs.500/hr",
        text4: " 💟 "
    ),
  ];
  List<IconData> icons = [CupertinoIcons.heart_fill ,CupertinoIcons.heart_fill,CupertinoIcons.heart_fill,CupertinoIcons.heart_fill, CupertinoIcons.heart_fill, CupertinoIcons.heart_fill,CupertinoIcons.heart_fill];


  bool color = true;
  final Color _nonselected = Colors.white;
  final Color _selected = Colors.red;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_rounded,color: Colors.black,size: 30)),
        title: const Text(" Plumbers 🧑‍🔧 ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return
          InkWell(
            onTap: () {

            },
            child: Card(
              color: Colors.white12,
              margin: const EdgeInsets.all(14),
              shadowColor: Colors.white70,
              child: Padding(
                padding: const EdgeInsets.only(left: 11.0,bottom: 18,right: 11,top: 21),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 180,
                          width: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(lists[index].images),
                fit: BoxFit.fill
                            )
                            )
                          ),
                         //   child: Image.asset(lists[index].images,height: 80)),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 11.0),
                          child: Text(lists[index].text,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 18)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 11.0),
                          child: Text(lists[index].text1,style: const TextStyle(fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Text(lists[index].text2,style: const TextStyle(fontSize: 16)),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(bottom: 11.0),
                        //   child: Text(lists[index].text4,style:  TextStyle(color: Colors.red.shade900,fontSize: 21)),
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 21.0),
                          child: Text(lists[index].text3,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 18)),
                        ),
                        Row(
                          children: [
                           Padding(
                             padding: const EdgeInsets.only(right:11.0),
                             child: TextButton(
                               onPressed: () {
                                 setState(() {
                                   color = ! color;

                                 });


                               },
                               child: Container(
                                 height: 40,
                                 width: 40,
                                 color: Colors.black12,
                                 child: Center(child: Icon(icons[index],color: color
                                     ? _nonselected
                                     : _selected,)),
                               ),
                             ),
                           ),
                            Container(
                              width: 100,
                              height: 40,

                              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(25)),
                              child: const Center(child: Text("Book",style: TextStyle(color: Colors.white))),
                            ),
                          ],
                        )


                      ],
                    ),


                  ],
                ),
              ),
            ),
          );

      },itemCount: lists.length,shrinkWrap: true),

    ));
  }
}