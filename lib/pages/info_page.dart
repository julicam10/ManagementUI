import 'package:flutter/material.dart';
import 'package:managment_app_ui/models/categories_info.dart';
import 'package:managment_app_ui/models/worker_info.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkerInfoDetails extends StatefulWidget {
  WorkerInfoDetails({
    Key? key,
    required this.workers,
    required this.categories,
  }) : super(key: key);
  final WorkerDetails workers;
  final CategoryDetails categories;
  @override
  State<WorkerInfoDetails> createState() => _WorkerInfoDetailsState();
}

class _WorkerInfoDetailsState extends State<WorkerInfoDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.categories.color,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              RowWorkerInfo(context),
            ],
          ),
        ),
      ),
    );
  }

  Row RowWorkerInfo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
            ),
            child: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
              size: 35.0,
            ),
          ),
        ),
        Text(
          widget.categories.nameCategory,
          style: GoogleFonts.openSans(
            textStyle: const TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.white,
          ),
          child: const Icon(
            Icons.add,
            color: Colors.black,
            size: 35.0,
          ),
        ),
      ],
    );
  }
}
