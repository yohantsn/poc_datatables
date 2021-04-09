import 'package:flutter/material.dart';
import 'app/pages/page_buttons.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.black),
        iconTheme: IconThemeData(color: Colors.white)),
    home: PageButton(),
  ));
}
