import 'package:flutter/material.dart';
import 'package:managment_app_ui/models/categories_info.dart';
import 'package:managment_app_ui/models/categories_list.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:managment_app_ui/models/worker_info.dart';
import 'package:managment_app_ui/models/workers_list.dart';
import 'package:managment_app_ui/pages/info_page.dart';

ListView WorkersWidgets() {
  return ListView.builder(
    scrollDirection: Axis.vertical,
    itemCount: categoryDetails.length,
    padding: const EdgeInsets.symmetric(vertical: 15),
    itemBuilder: (BuildContext context, int index) {
      CategoryDetails categories = categoryDetails[index];
      WorkerDetails workers = workerDetails[index];
      return Padding(
        padding: const EdgeInsets.only(left: 20, top: 15),
        child: Container(
          decoration: BoxDecoration(
            color: categories.color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(workers.image),
              ),
              title: Text(
                workers.name,
                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              subtitle: Text(
                workers.jobTitle,
                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),
              ),
              trailing: const Icon(
                Icons.edit_note_rounded,
                size: 35.0,
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WorkerInfoDetails(
                    workers: workers,
                    categories: categories,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
