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
    var alto = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: widget.categories.color,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
          child: Column(
            children: [
              RowWorkerInfo(context),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Container(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(widget.workers.image),
                  ),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  widget.workers.name,
                  style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Container(
                  height: 481,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, left: 10.0),
                        child: Text(
                          'Stats',
                          style: GoogleFonts.openSans(
                            textStyle: const TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, left: 10.0),
                        child: StatsWidget(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, left: 10.0),
                        child: Text(
                          'Last Updates',
                          style: GoogleFonts.openSans(
                            textStyle: const TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Card(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Card2(),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Center Card() {
    return Center(
      child: Container(
        height: 100,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: ListTile(
          title: Text(
            'General',
            style: GoogleFonts.openSans(
              textStyle: const TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          subtitle: Text(
            widget.workers.general,
            style: GoogleFonts.openSans(
              textStyle: const TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Center Card2() {
    return Center(
      child: Container(
        height: 100,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: ListTile(
          title: Text(
            'Software',
            style: GoogleFonts.openSans(
              textStyle: const TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          subtitle: Text(
            widget.workers.software,
            style: GoogleFonts.openSans(
              textStyle: const TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
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

  Row StatsWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: const [
            Icon(
              Icons.favorite,
              size: 50,
              color: Colors.red,
            ),
            Text('43 likes')
          ],
        ),
        Column(
          children: const [
            Icon(
              Icons.thumb_up,
              size: 50,
              color: Colors.green,
            ),
            Text('21 thanks')
          ],
        ),
        Column(
          children: const [
            Icon(
              Icons.military_tech,
              size: 50,
              color: Colors.blue,
            ),
            Text('43 credits')
          ],
        ),
      ],
    );
  }
}
