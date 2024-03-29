import 'package:flutter/cupertino.dart';
import '../../../../utils/constants/MyAppColor.dart';

class MyAppCircularContainer extends StatelessWidget {
  const MyAppCircularContainer({
    super.key,
    this.width = 400,
    this.height =400,
    this.radius =400,
    this.padding = 0,
    this.child,
    this.backGroundColor = MyAppColors.white,
    this.margin,
  });

  final double? width;
  final double? height;
  final double radius  ;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backGroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color:backGroundColor
      ),
    );
  }
}
