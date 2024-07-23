import 'package:flutter/material.dart';

import '../../User_Model/index.dart';
import 'Architers_List.dart';
import 'Construction_List.dart';
import 'Contractor_List.dart';
import 'Decor_List.dart';
import 'Furniture_List.dart';
import 'Interior_List.dart';
import 'Tiles_List.dart';
import 'Windows_List.dart';

class ViewAllListCon extends StatefulWidget {
  const ViewAllListCon({super.key});

  @override
  State<ViewAllListCon> createState() => _ViewAllListConState();
}

class _ViewAllListConState extends State<ViewAllListCon> {
  final int comingindex = Myindexes.viewallconstruction;

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
    ));  }
}
