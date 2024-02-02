import 'package:flutter/material.dart';
class MyAppColors{
  MyAppColors._();


  //app basic color
  static const Color primaryColor = Color(0xFF4b68ff);
  static const Color secondary = Color(0xffeed955);
  static const Color acent = Color(0xffffffff);


  //graddient color

  static const Gradient linearGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end:  Alignment(0.707, -0.707),
      colors: [

    Color(0xFFEEE8E8),
    Color(0xFFE0C37A),
    Color(0xE0C37AFF),

  ]);
  //text color
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xff5e5f60);
  static const Color textWhite = Color(0xffffffff);

  //backgroundcolor
  static const Color light = Color(0xffffffff);
  static const Color dark  = Color(0xff4a4a4b);
  static const Color primaryBackground = Color(0xffffffff);


  //container color
  static const Color lightContainer = Color(0xffffffff);
  static const Color darkContainer = Color(0xffefecec);


  //button
  static const Color buttomPrimary = Color(0xFF4b68ff );
  static const Color buttomSecondary  = Color(0xff4a4a4b);
  static const Color buttonDisable = Color(0xffffffff);

  //border color
  static const Color borderPrimary = Color(0xffffffff);
  static const Color borderSecondary = Color(0xffefecec);

  //error and validations
  static const Color error = Color(0xffee1132);
  static const Color success  = Color(0xff13e113);
  static const Color warning  = Color(0xffd35f2d);

  static const Color info = Color(0xFF4b68ff);

}