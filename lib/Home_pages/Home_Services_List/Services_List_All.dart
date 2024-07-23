import 'package:flutter/material.dart';

import '../../User_Model/index.dart';
import 'CarExperts_List.dart';
import 'CarWash_List.dart';
import 'Carpenters_List.dart';
import 'Cleaning_List.dart';
import 'Electrician_list.dart';
import 'Painting_List.dart';
import 'Pet.dr_List.dart';
import 'Plumbers_list.dart';

class HomeservicesList extends StatefulWidget {
  const HomeservicesList({super.key});

  @override
  State<HomeservicesList> createState() => _HomeservicesListState();
}

class _HomeservicesListState extends State<HomeservicesList> {
  final int comingindex = Myindexes.serviceslist;

  final screens=[
    const HomeServicesList(),
    const Electricianlist(),
    const PaintingList(),
    const CarpentersList(),
    const CleaningList(),
    const CarWash(),
    const PetDr(),
    const CaeExperts(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: screens[comingindex],
      extendBody: true,
    ));
  }
}