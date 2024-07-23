import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:home_services/Account_Page/AboutUs_Page.dart';
import 'package:home_services/Account_Page/Account_Main_Page.dart';
import 'package:home_services/Account_Page/Customer_care_Page.dart';
import 'package:home_services/Account_Page/Fav_Main_Page.dart';
import 'package:home_services/Account_Page/My_Profile_Page.dart';
import 'package:home_services/Home_pages/Booking_Main_WithBack_Page.dart';
import 'package:home_services/Home_pages/Home_Construction_List/Home_Construction_List.dart';
import 'package:home_services/Home_pages/Home_Services_List/Services_Viewall_Page.dart';
import 'package:home_services/Login_signup_Pages/Login_Page.dart';
import 'package:home_services/Login_signup_Pages/SidnUp_Page.dart';
import 'package:home_services/Login_signup_Pages/UserInfo_Page.dart';
import 'package:home_services/User_Model/index.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../Home_pages/Home_Construction_List/View_All.dart';
import '../Home_pages/Notification_Page.dart';
import '../Home_pages/Popular_Services/View_All.dart';
import '../User_Model/User_Model.dart';

class LogInMainscreenpage extends StatefulWidget {
  const LogInMainscreenpage({super.key});

  @override
  State<LogInMainscreenpage> createState() => _LogInMainscreenpageState();
}

class _LogInMainscreenpageState extends State<LogInMainscreenpage> {

  TextEditingController get _textcontrolller => TextEditingController();
  List<UserModel> user = [
    UserModel(
      images:
      "assets/images/IMG-20240311-WA0005.jpg",
      images1: "assets/images/Screenshot 2024-03-12 134815.png",
      images2: "assets/images/pipe-wrench-icon-vector-17044921.jpg",
      images3: "assets/images/IMG-20240311-WA0003.jpg",
      text: "Plumber",
      text1: "Construction",
      text2: "Home Interior",
      images4: "assets/images/Screenshot 2024-03-17 153214.png",
      text3: "Pest Control",



    ),
    UserModel(
      images:
      "assets/images/IMG-20240311-WA0008.jpg",
      images1: "assets/images/Screenshot 2024-03-12 134855.png",
      images2: "assets/images/electrician-icon-vector-3035786.jpg",
      images3: "assets/images/IMG-20240311-WA0010.jpg",
      text: "Electrician",
      text1: "Architects",
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
      text: "Painting",
      text1: "Interior",
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
      text: "Carpenter",
      text1: "Furniture",
      text2: "Office Interior",
      images4: "",
      text3: "",
    ),
    UserModel(
      images:
      "assets/images/WhatsApp Image 2024-03-10 at 12.59.55_d3902c65.jpg",
      images1: "assets/images/Screenshot 2024-03-12 135104.png",
      images2:
      "assets/images/Screenshot 2024-03-12 125531.png",
      images3: "",
      text: "Cleaning",
      text1: "Contractor",
      text2: "",
      images4: "",
      text3: "",
    ),
    UserModel(
      images:
      "assets/images/Screenshot 2024-03-12 125612.png",
      images1: "assets/images/Screenshot 2024-03-12 135128.png",
      images2: "assets/images/Screenshot 2024-03-12 125612.png",
      images3: "",
      text: "Car Washing",
      text1: "Decor",
      text2: "",
      images4: "",
      text3: "",
    ),
    UserModel(
      images:
      "assets/images/Screenshot 2024-03-12 125759.png",
      images1: "assets/images/Screenshot 2024-03-12 135235.png",
      images2: "assets/images/Screenshot 2024-03-12 125759.png",
      images3: "",
      text: "Pet Dr.",
      text1: "Tiles",
      text2: "",
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
      text1: "Windows",
      text2: "",
      images4: "",
      text3: "",
    ),

  ];
  int myCurrentIndex = 0;
  int mySecondIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text("Zlm Home Services 💫 ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
              centerTitle: true,
              actions:  [
                Padding(
                  padding: const EdgeInsets.only(right: 11.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationPage(),));
                    },
                    child: const Icon(
                      CupertinoIcons.bell_fill,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                )
              ],
              iconTheme: const IconThemeData(color: Colors.black,size: 35), //add this line here

              backgroundColor: Colors.white,

            ),

            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, right: 8, left: 8),
                    child: TextFormField(
                      controller: _textcontrolller,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                          hintText: "Search for services",
                          suffixIcon: const Padding(
                            padding: EdgeInsets.only(right: 11.0),
                            child: Icon(
                              CupertinoIcons.search,
                              color: Colors.black,
                              weight: 45,
                            ),
                          ),
                          fillColor: Colors.black12,
                          filled: true),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 11.0,bottom: 8),
                    child: CarouselSlider(
                      items: [
                        Container(
                          margin: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/WhatsApp Image 2024-03-10 at 12.59.55_ba94a480.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/WhatsApp Image 2024-03-10 at 12.59.55_e6dd7a51.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/WhatsApp Image 2024-03-10 at 12.59.55_73abd61d.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                          onPageChanged: (index, reason) {
                            setState(() {
                              myCurrentIndex = index;
                            });
                          },

                          height: 160,
                          aspectRatio: 50,
                          scrollDirection: Axis.horizontal,
                          autoPlay: true,
                          autoPlayAnimationDuration: const Duration(seconds: 1),
                          enableInfiniteScroll: true),


                    ),
                  ),
                  AnimatedSmoothIndicator(activeIndex: myCurrentIndex,
                    count: 3,
                    curve: Curves.linear,
                    effect: WormEffect(
                      dotHeight: 8,
                      dotWidth: 9,
                      spacing: 10,
                      type: WormType.thin,
                      dotColor: Colors.grey.shade500,
                      activeDotColor: Colors.black,
                      paintStyle: PaintingStyle.fill,
                      strokeWidth: 50,

                    ),),
                  Padding(
                    padding: const EdgeInsets.only(top: 11.0, right: 18, left: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Home Services",
                            style: TextStyle(
                                fontSize: 21,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewALLServices(),));
                          },
                          child: const Text("View All",
                              style: TextStyle(
                                  color: Colors.orange, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 21.0,bottom: 11),
                    child: GridView.builder(
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            CircleAvatar(
                                backgroundImage: AssetImage(user[index].images2),
                                maxRadius: 30),
                            Padding(
                              padding: const EdgeInsets.only(top: 11.0),
                              child: Text(user[index].text,style: const TextStyle(fontWeight: FontWeight.w500)),
                            )
                          ],
                        );
                      },
                      shrinkWrap: true,
                      itemCount: 8,
                      controller: ScrollController(keepScrollOffset: true),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, right: 18, left: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Home Construction",
                            style: TextStyle(
                                fontSize: 21,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewAllConstruction(),));
                          },
                          child: const Text("View All",
                              style: TextStyle(
                                  color: Colors.orange, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  const EdgeInsets.only(top: 21.0),
                    child: GridView.builder(
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Myindexes.myindex = index;
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const ServiceProductsList(),), (route) => true);
                          },
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(user[index].images1),
                                maxRadius: 30,),
                              Padding(
                                padding: const EdgeInsets.only(top: 11),
                                child: Text(user[index].text1,style: const TextStyle(fontWeight: FontWeight.w500)),
                              )
                            ],
                          ),
                        );
                      },
                      shrinkWrap: true,
                      itemCount: user.length,
                      controller: ScrollController(keepScrollOffset: true),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, right: 18, left: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Popular Services",
                            style: TextStyle(
                                fontSize: 21,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const PopularViewAll(),));
                          },
                          child: const Text("View All",
                              style: TextStyle(
                                  color: Colors.orange, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 21.0),
                    child: SizedBox(
                      height: 160,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 11.0,bottom: 11),
                            child: Image.asset(user[index].images),
                          );
                        },
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, right: 18, left: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Renovate your home",
                            style: TextStyle(
                                fontSize: 21,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewALLServices(),));
                          },
                          child: const Text("View All",
                              style: TextStyle(
                                  color: Colors.orange, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 21.0),
                    child: SizedBox(
                      height: 170,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 11.0),
                                child: Image.asset(user[index].images3,width: 190,),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 8.0,right: 11),
                                child: Text(user[index].text2,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                              )

                            ],
                          );
                        },
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only( right: 18, left: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Clean your home",
                            style: TextStyle(
                                fontSize: 21,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewALLServices(),));
                          },
                          child: const Text("View All",
                              style: TextStyle(
                                  color: Colors.orange, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 21.0),
                    child: SizedBox(
                      height: 165,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 11.0),
                                child: Image.asset(user[index].images4,width: 190,),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 15.0,right: 11),
                                child: Text(user[index].text3,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                              )

                            ],
                          );
                        },
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only( right: 18, left: 18,bottom: 11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("What our customers say 😊",
                            style: TextStyle(
                                fontSize: 21,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),

                      ],
                    ),
                  ),
                  CarouselSlider(
                    items: [
                      Card(
                        color: Colors.white24,
                        child: Container(
                          margin: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/customer 3.jpg"),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.white24,
                        child: Container(
                          margin: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/customer 2.jpg"),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.white24,
                        child: Container(
                          margin: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/customer 1.jpg"),
                            ),
                          ),
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                        onPageChanged: (index, reason) {
                          setState(() {
                            mySecondIndex = index;
                          });
                        },
                        height: 100,
                        aspectRatio: 50,
                        scrollDirection: Axis.horizontal,
                        autoPlayAnimationDuration: const Duration(seconds: 1),
                        enableInfiniteScroll: true),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,bottom: 16),
                    child: AnimatedSmoothIndicator(activeIndex: mySecondIndex,
                      count: 3,
                      curve: Curves.linear,
                      effect: WormEffect(
                        dotHeight: 8,
                        dotWidth: 8,
                        spacing: 10,
                        type: WormType.thin,
                        dotColor: Colors.grey.shade500,
                        activeDotColor: Colors.black,
                        paintStyle: PaintingStyle.fill,
                        strokeWidth: 50,

                      ),),
                  ),
                ],
              ),

            ),
            drawer:  Drawer(
              backgroundColor: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0,top: 11),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Row(
                          children: [
                            Icon(Icons.arrow_back_rounded,size: 35),
                          ],
                        ),
                      ),
                    ),
                    DrawerHeader(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ), //BoxDecoration
                      child: UserAccountsDrawerHeader(
                        decoration: const BoxDecoration(color: Colors.white),
                        accountName: Text(
                          InfoUser.userName,
                          style: const TextStyle(fontSize: 18,color: Colors.black),
                        ),
                        accountEmail: Text(SignUpPage.mail,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                        currentAccountPictureSize: const Size.square(55),
                        currentAccountPicture: const CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Text(
                            "🤡",
                            style: TextStyle(fontSize: 30.0, color: Colors.white),
                          ), //Text
                        ), //circleAvatar
                      ), //UserAccountDrawerHeader
                    ),
                    ListTile(
                      leading: const Icon(Icons.person,color: Colors.black),
                      title: const Text(' My Profile '),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const MyProfile(),));
                      },
                    ),
                    ListTile(
                      leading: const Icon(CupertinoIcons.heart_fill,color: Colors.black),
                      title: const Text(' My favourites '),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const FavMainPage(),));
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.notifications,color: Colors.black),
                      title: const Text(' Notifications '),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationPage(),));
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.calendar_month,color: Colors.black),
                      title: const Text(' My bookings '),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const BookingMainBack(),));
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.monetization_on,color: Colors.black),
                      title: const Text(' Refer and earn '),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.info_outline,color: Colors.black),
                      title: const Text(' About Us '),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutUs(),));
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.help,color: Colors.black),
                      title: const Text(' Help Center '),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const CustomerCareMain(),));
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.logout,color: Colors.black),
                      title: const Text('LogOut'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),

                  ],
                ),
              ),
            )
        )
    );
  }
}
