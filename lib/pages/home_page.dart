import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:managment_app_ui/models/worker_info.dart';
import 'package:managment_app_ui/models/workers_list.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // WorkerDetails workers = workerDetails[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Today',
                        style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                      ),
                      Text(
                        'Good Morning, Julian',
                        style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('assets/avatars/user1.jpg'),
                    ),
                  )
                ],
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      fillColor: Colors.grey[200],
                      filled: true,
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 18),
                        child: Icon(
                          Icons.search_rounded,
                          size: 35,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
