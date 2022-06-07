import 'package:flutter/material.dart';
import 'package:managment_app_ui/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Managment App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
