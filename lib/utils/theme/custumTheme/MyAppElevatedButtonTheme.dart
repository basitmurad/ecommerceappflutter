import 'package:flutter/material.dart';
class MyAppElevatedButtomTheme
{

  MyAppElevatedButtomTheme._();

  static final lightTheme= ElevatedButtonThemeData(

    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white ,
      backgroundColor: Colors.blue,
      disabledBackgroundColor: Colors.grey,
        disabledForegroundColor: Colors.grey,
      side: BorderSide(color: Colors.blue),
      padding: EdgeInsets.symmetric(vertical: 18),
      textStyle: TextStyle(fontSize: 16, color: Colors.white , fontWeight: FontWeight.w700),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
    )


  );
  static final darkTheme= ElevatedButtonThemeData(



      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white ,
          backgroundColor: Colors.blue,
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.grey,
          side: BorderSide(color: Colors.blue),
          padding: EdgeInsets.symmetric(vertical: 18),
          textStyle: TextStyle(fontSize: 16, color: Colors.white , fontWeight: FontWeight.w700),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
      )

  );
}