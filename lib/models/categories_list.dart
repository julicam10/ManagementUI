import 'package:flutter/material.dart';
import 'package:managment_app_ui/models/categories_info.dart';

List<CategoryDetails> categoryDetails = [
  CategoryDetails(
      nameCategory: 'Developer',
      color: Colors.blue.shade300,
      icon: Icons.laptop_mac_sharp,
      workers: '86 techies'),
  CategoryDetails(
    nameCategory: 'Planning',
    color: Colors.amber.shade300,
    icon: Icons.note_alt_outlined,
    workers: '45 creatives',
  ),
  CategoryDetails(
    nameCategory: 'Advisory',
    color: Colors.green.shade300,
    icon: Icons.people_sharp,
    workers: '20 TI Especialist',
  ),
];
