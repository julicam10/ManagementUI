import 'package:flutter/material.dart';

TextFormField search_widget() {
  return TextFormField(
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
  );
}
