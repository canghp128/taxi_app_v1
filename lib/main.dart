import 'package:flutter/material.dart';
import 'package:taxi_app_v1/src/app.dart';

void main() =>runApp(MaterialApp(
  theme: ThemeData(
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xff606470), width: 1.0),
        borderRadius: BorderRadius.circular(8)
      )
    )
  ),
  home: MyApp()
));