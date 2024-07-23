import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
       appBar: AppBar(
         title: const Text("Notification",style: TextStyle(color: Colors.black)),
         centerTitle: true,
         leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
             child: const Icon(Icons.arrow_back_rounded,color: Colors.black)),
         backgroundColor: Colors.white,

       ),
      body: ListView.builder(itemBuilder: (context, index) {
        return const SizedBox(
          height: 74,
          child: Card(
            color: Colors.white10,
            margin: EdgeInsets.only(left: 15,right: 15,top: 11),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 18.0,bottom: 18,left: 11,right: 8),
                  child: Column(
                    children: [
                      Icon(CupertinoIcons.circle_grid_hex,color: Colors.black,)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(11.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Zlm Home Services 💫 ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Text("Thank you for order service using this app"),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );

      },
      itemCount: 21,
        shrinkWrap: true,
      ),
    ));
  }
}
