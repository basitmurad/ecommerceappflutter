import 'package:ecommerceapp/utils/constants/MyAppColor.dart';
import 'package:flutter/cupertino.dart';

class MyAppShadowStyle{
  static final shadowVertical = BoxShadow(
color: MyAppColors.dark.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0,2)
  );

  static final shadowHorizontal = BoxShadow(
      color: MyAppColors.dark.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: Offset(0,2)
  );
}