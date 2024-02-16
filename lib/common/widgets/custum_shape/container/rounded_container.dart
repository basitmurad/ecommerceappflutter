import 'package:ecommerceapp/utils/constants/MyAppColor.dart';
import 'package:ecommerceapp/utils/constants/MyAppSizes.dart';
import 'package:flutter/cupertino.dart';

class MyAppRoundedContainer extends StatelessWidget {
  const MyAppRoundedContainer({super.key,
    this.width,
    this.height,
     this.radius = MyAppSizes.cardRadiusLg,
    this.child,
     this.showBorder = false,
     this.borderColor = MyAppColors.white,
     this.backgroundColor = MyAppColors.borderPrimary,
    this.padding,
    this.margin});


  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: child,


      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(

        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null


      ),
    );
  }
}
