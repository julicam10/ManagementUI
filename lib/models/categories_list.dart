import 'package:flutter/material.dart';
import 'package:managment_app_ui/models/categories_info.dart';

List<CategoryDetails> categoryDetails = [
  CategoryDetails(
      nameCategory: 'Developer',
      color: Color.fromRGBO(204, 243, 238, 1),
      icon: Icons.laptop_mac_sharp,
      workers: '86 techies'),
  CategoryDetails(
    nameCategory: 'Planning',
    color: Color.fromRGBO(211, 228, 205, 1),
    icon: Icons.note_alt_outlined,
    workers: '45 creatives',
  ),
  CategoryDetails(
    nameCategory: 'Advisory',
    color: Color.fromRGBO(249, 235, 200, 1),
    icon: Icons.people_sharp,
    workers: '20 TI Especialist',
  ),
];
