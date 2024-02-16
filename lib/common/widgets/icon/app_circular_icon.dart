import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/MyAppColor.dart';
import '../../../utils/constants/MyAppSizes.dart';
import '../../../utils/helpers/MyAppHelper.dart';

class AppCircularIcon extends StatelessWidget {
  const AppCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = MyAppSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {

    final dark = MyAppHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,


      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor!=null
              ?backgroundColor !
              :MyAppHelperFunctions.isDarkMode(context)
              ?MyAppColors.black.withOpacity(0.9) :
          MyAppColors.white.withOpacity(0.9)
      ),
      child: IconButton(onPressed:onPressed, icon: Icon(icon ,color: color, size: size,) ),
    );
  }
}
