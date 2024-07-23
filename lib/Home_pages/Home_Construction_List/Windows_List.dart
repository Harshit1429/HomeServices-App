import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../User_Model/Fav_UserModel.dart';

class WindowsList extends StatefulWidget {
  const WindowsList({super.key});

  @override
  State<WindowsList> createState() => _WindowsListState();
}

class _WindowsListState extends State<WindowsList> {
  List<FavUserModel> lists=[
    FavUserModel(
        images: "assets/images/win 1.jpeg",
        text: " Good Wood Material",
        text1: " Price According to size ",
        text2: "⭐ 4.5",
        text3: "Starting Rs.700/-",
        text4: " 💟 "
    ),
    FavUserModel(
        images: "assets/images/win 2.jpeg",
        text: " Good Wood Material ",
        text1: " Price According to size ",
        text2: "⭐ 3.5",
        text3: "Staring Rs.400/-",
        text4: " 💟 "
    ),
    FavUserModel(
        images: "assets/images/win 3.jpg",
        text: " Good Wood Material",
        text1: " Price According to size",
        text2: "⭐ 4.5",
        text3: "Staring Rs.800/-",
        text4: " 💟 "
    ),
    FavUserModel(
        images: "assets/images/win 4.jpeg",
        text: " Good Wood Material ",
        text1: " Price According to size",
        text2: "⭐ 4.0",
        text3: "Staring Rs.700/-",
        text4: " 💟 "
    ),
    FavUserModel(
        images: "assets/images/win 5.jpg",
        text: " Good Wood Material",
        text1: " Price According to size",
        text2: "⭐ 4.5",
        text3: "Staring Rs.400/-",
        text4: " 💟 "
    ),
    FavUserModel(
        images: "assets/images/win 6.jpg",
        text: " Good Wood Material",
        text1: " Price According to size ",
        text2: "⭐ 4.5",
        text3: "Staring Rs.500/-",
        text4: " 💟 "
    ),
    FavUserModel(
        images: "assets/images/win 7.jpeg",
        text: " Good Wood Material",
        text1: " Price According to size ",
        text2: "⭐ 4.5",
        text3: "Staring Rs.800/-",
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
        title: const Text(" Windows 🪟  ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
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
                              child: const Center(child: Text("Order",style: TextStyle(color: Colors.white))),
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

    ));
  }
}
