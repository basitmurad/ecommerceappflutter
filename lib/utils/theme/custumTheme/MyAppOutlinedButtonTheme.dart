import 'package:flutter/material.dart';
class MyAppOutlinedButtonTheme{

  MyAppOutlinedButtonTheme._();

  static final lightTheme = OutlinedButtonThemeData(

      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.black ,
          backgroundColor: Colors.blue,

          side: BorderSide(color: Colors.blue),
          padding: EdgeInsets.symmetric(vertical: 18),
          textStyle: TextStyle(fontSize: 16, color: Colors.black , fontWeight: FontWeight.w700),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
      )
  );
  static final darkTheme = OutlinedButtonThemeData(

      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white ,

          side: BorderSide(color: Colors.blueAccent),
          padding: EdgeInsets.symmetric(vertical: 18),
          textStyle: TextStyle(fontSize: 16, color: Colors.white  , fontWeight: FontWeight.w700),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
      )

  );

}