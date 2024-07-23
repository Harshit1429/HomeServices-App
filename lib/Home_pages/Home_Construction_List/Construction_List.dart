import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../User_Model/Fav_UserModel.dart';

class ConstructionList extends StatefulWidget {
  const ConstructionList({super.key});

  @override
  State<ConstructionList> createState() => _ConstructionListState();
}

class _ConstructionListState extends State<ConstructionList> {
  List<FavUserModel> lists=[
    FavUserModel(
        images: "assets/images/con 1.jpeg",
        text: "A.K Constructions",
        text1: "Flat experts ",
        text2: "⭐ 4.5",
        text3: "5 years experience",
        text4: " 💟 "
    ),
    FavUserModel(
        images: "assets/images/con 2.jpeg",
        text: "P.K builders ",
        text1: "All types of home ",
        text2: "⭐ 3.5",
        text3: "7 years experience",
        text4: " 💟 "
    ),
    FavUserModel(
        images: "assets/images/con 3.jpg",
        text: "D&T Groups",
        text1: "New designs",
        text2: "⭐ 4.5",
        text3: "5 years experience",
        text4: " 💟 "
    ),
    FavUserModel(
        images: "assets/images/con 4.jpg",
        text: "ZK contractors ",
        text1: "Also provide interior",
        text2: "⭐ 4.0",
        text3: "2 years experience",
        text4: " 💟 "
    ),
    FavUserModel(
        images: "assets/images/con 5.jpeg",
        text: "Laxmi Homes",
        text1: "Good Name in Market ",
        text2: "⭐ 4.5",
        text3: "9 years experience",
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
        title: const Text(" Constructions 🏗️ ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
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
                                padding: const EdgeInsets.only(bottom: 21.0,left: 11),
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
                                    width: 110,
                                    height: 40,

                                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(25)),
                                    child: const Center(child: Text("Appointment",style: TextStyle(color: Colors.white))),
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

            },itemCount: lists.length,shrinkWrap: true,controller: ScrollController(keepScrollOffset: false)),
          ],
        ),
      ),

    ));
  }
}
