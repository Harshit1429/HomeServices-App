import 'package:flutter/material.dart';

class BookingHistoryPage extends StatefulWidget {
  const BookingHistoryPage({super.key});

  @override
  State<BookingHistoryPage> createState() => _BookingHistoryPageState();
}

class _BookingHistoryPageState extends State<BookingHistoryPage> {

  @override
  Widget build(BuildContext context) {
    return   SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0,bottom: 21),
          child: Column(
            children: [
              Card(
                color: Colors.white54,
                margin: const EdgeInsets.all(11),
                shadowColor: Colors.white70,



                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 11.0,bottom: 11,left:11,right: 11),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Text("Full House Cleaning ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 18)),
                          Text("Completed", style: TextStyle(fontSize: 17,color: Colors.green),)
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.black26,
                      height: 1,
                      width: 425,),
                    Padding(
                      padding: const EdgeInsets.only(top: 11.0,right: 11,left: 11,bottom: 11),
                      child: Row(
                        children: [
                          Image.asset("assets/images/IMG-20240311-WA0011.jpg",height: 50,),
                          const Padding(
                            padding: EdgeInsets.only(left: 11.0),
                            child: Column(
                              children: [
                                Text("Jaylen Cleaning Services",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 18)),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text("🕧 feb 4,2024 at 4am ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 15)),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 11.0,bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Rs. 2599",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 18))
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.black26,
                      height: 1,
                      width: 425,),
                    InkWell(
                      onTap: () {

                      },
                      child: const Padding(
                        padding: EdgeInsets.only(top: 11.0,bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Book Again",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w900,fontSize: 18))
                          ],
                        ),
                      ),
                    ),


                  ],
                ),


              ),
              Card(
                color: Colors.white54,
                margin: const EdgeInsets.all(11),
                shadowColor: Colors.white70,



                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 11.0,bottom: 11,left:11,right: 11),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Text("Kitchen Cleaning ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 18)),
                          Text("Cancelled ", style: TextStyle(fontSize: 17,color: Colors.red),)
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.black26,
                      height: 1,
                      width: 425,),
                    Padding(
                      padding: const EdgeInsets.only(top: 11.0,right: 11,left: 11,bottom: 11),
                      child: Row(
                        children: [
                          Image.asset("assets/images/IMG-20240311-WA0011.jpg",height: 50,),
                          const Padding(
                            padding: EdgeInsets.only(left: 11.0),
                            child: Column(
                              children: [
                                Text("Sj Cleaning Services",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 18)),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text("🕧 jan 4,2024 at 5am ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 15)),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 11.0,bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Rs. 3000",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 18))
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.black26,
                      height: 1,
                      width: 425,),
                    InkWell(
                      onTap: () {

                      },
                      child: const Padding(
                        padding: EdgeInsets.only(top: 11.0,bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Book again",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w900,fontSize: 18))
                          ],
                        ),
                      ),
                    ),


                  ],
                ),


              ),
              Card(
                color: Colors.white54,
                margin: const EdgeInsets.all(11),
                shadowColor: Colors.white70,



                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 11.0,bottom: 11,left:11,right: 11),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Text("Bedroom Cleaning ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 18)),
                          Text("Completed ", style: TextStyle(fontSize: 17,color: Colors.green),)
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.black26,
                      height: 1,
                      width: 425,),
                    Padding(
                      padding: const EdgeInsets.only(top: 11.0,right: 11,left: 11,bottom: 11),
                      child: Row(
                        children: [
                          Image.asset("assets/images/IMG-20240311-WA0011.jpg",height: 50,),
                          const Padding(
                            padding: EdgeInsets.only(left: 11.0),
                            child: Column(
                              children: [
                                Text("CK Cleaning Services",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 18)),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text("🕧 dec 4,2023 at 6am ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 15)),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 11.0,bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Rs. 1500",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 18))
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.black26,
                      height: 1,
                      width: 425,),
                    InkWell(
                      onTap: () {

                      },
                      child: const Padding(
                        padding: EdgeInsets.only(top: 11.0,bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Book Again",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w900,fontSize: 18))
                          ],
                        ),
                      ),
                    ),


                  ],
                ),


              ),
              Card(
                color: Colors.white54,
                margin: const EdgeInsets.all(11),
                shadowColor: Colors.white70,



                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 11.0,bottom: 11,left:11,right: 11),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Text("Kitchen Cleaning ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 18)),
                          Text("Completed ", style: TextStyle(fontSize: 17,color: Colors.green),)
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.black26,
                      height: 1,
                      width: 425,),
                    Padding(
                      padding: const EdgeInsets.only(top: 11.0,right: 11,left: 11,bottom: 11),
                      child: Row(
                        children: [
                          Image.asset("assets/images/IMG-20240311-WA0011.jpg",height: 50,),
                          const Padding(
                            padding: EdgeInsets.only(left: 11.0),
                            child: Column(
                              children: [
                                Text("Happy Cleaning Services",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 18)),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text("🕧 nov 30,2023 at 4pm ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 15)),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 11.0,bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Rs. 2599",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 18))
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.black26,
                      height: 1,
                      width: 425,),
                    InkWell(
                      onTap: () {

                      },
                      child: const Padding(
                        padding: EdgeInsets.only(top: 11.0,bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Book Again",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w900,fontSize: 18))
                          ],
                        ),
                      ),
                    ),


                  ],
                ),


              )
            ],
          ),
        ),
      ),
    ));
  }
}
