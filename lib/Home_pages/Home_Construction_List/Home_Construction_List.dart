import 'package:flutter/material.dart';
import 'package:home_services/Home_pages/Notification_Page.dart';
import 'package:home_services/User_Model/index.dart';

import '../Bottom_Navigation_Bar.dart';
import 'Architers_List.dart';
import 'Construction_List.dart';
import 'Contractor_List.dart';
import 'Decor_List.dart';
import 'Furniture_List.dart';
import 'Interior_List.dart';
import 'Tiles_List.dart';
import 'Windows_List.dart';

class ServiceProductsList extends StatefulWidget {
  const ServiceProductsList({super.key});

  @override
  State<ServiceProductsList> createState() => _ServiceProductsListState();
}

class _ServiceProductsListState extends State<ServiceProductsList> {

   final int comingindex = Myindexes.myindex;

  final screens=[
    const ConstructionList(),
    const ArchitectsList(),
    const InteriorList(),
    const FurnitureList(),
    const ContractorList(),
    const Decorlist(),
    const TilesList(),
    const WindowsList(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: screens[comingindex],
        extendBody: true,
    ));
  }
}
