import 'package:flutter/material.dart';

import '../../User_Model/index.dart';
import '../Home_Construction_List/Architers_List.dart';
import '../Home_Construction_List/Construction_List.dart';
import '../Home_Construction_List/Contractor_List.dart';
import '../Home_Construction_List/Decor_List.dart';
import '../Home_Construction_List/Furniture_List.dart';
import '../Home_Construction_List/Interior_List.dart';
import '../Home_Construction_List/Tiles_List.dart';
import '../Home_Construction_List/Windows_List.dart';
import '../Home_Services_List/CarExperts_List.dart';
import '../Home_Services_List/CarWash_List.dart';
import '../Home_Services_List/Carpenters_List.dart';
import '../Home_Services_List/Cleaning_List.dart';
import '../Home_Services_List/Electrician_list.dart';
import '../Home_Services_List/Painting_List.dart';
import '../Home_Services_List/Pet.dr_List.dart';
import '../Home_Services_List/Plumbers_list.dart';

class ViewAllListPopular extends StatefulWidget {
  const ViewAllListPopular({super.key});

  @override
  State<ViewAllListPopular> createState() => _ViewAllListPopularState();
}

class _ViewAllListPopularState extends State<ViewAllListPopular> {
  final int comingindex = Myindexes.viewallpop;

  final screens=[
    const HomeServicesList(),
    const Electricianlist(),
    const PaintingList(),
    const CarpentersList(),
    const CleaningList(),
    const CarWash(),
    const PetDr(),
    const CaeExperts(),
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
