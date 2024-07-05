

import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle TextBoldStyleWidget(){
    return TextStyle(
        color: Colors.black,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins',
    );
  }

  static TextStyle HeadLineBoldStyleWidget(){
    return TextStyle(
      color: Colors.black,
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle LightTextStyleWidget(){
    return TextStyle(
      color: Colors.black38,
      fontSize: 17.0,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    );
  }
  static TextStyle SemiBoldTextStyleWidget(){
    return TextStyle(
      color: Colors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
    );
  }
}