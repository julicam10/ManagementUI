import 'package:flutter/material.dart';
import 'package:managment_app_ui/models/categories_info.dart';
import 'package:managment_app_ui/models/categories_list.dart';
import 'package:google_fonts/google_fonts.dart';

ListView DepartmentsWidgets() {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: categoryDetails.length,
    padding: const EdgeInsets.symmetric(vertical: 10),
    itemBuilder: (BuildContext context, int index) {
      CategoryDetails categories = categoryDetails[index];
      return Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          height: 300,
          width: 175,
          decoration: BoxDecoration(
            color: categories.color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  categories.icon,
                  size: 40.0,
                ),
                Text(
                  categories.nameCategory,
                  style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  categories.workers,
                  style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
