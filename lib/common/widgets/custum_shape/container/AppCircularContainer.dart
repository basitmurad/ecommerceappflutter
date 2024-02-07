import 'package:flutter/cupertino.dart';
import '../../../../utils/constants/MyAppColor.dart';

class AppCircularContainer extends StatelessWidget {
  const AppCircularContainer({
    super.key,
    this.width = 350,
    this.height =350,
    this.radius =350,
    this.padding = 0,
    this.child,
    this.backGroundColor = MyAppColors.white,
  });

  final double? width;
  final double? height;
  final double radius  ;
  final double padding;
  final Widget? child;
  final Color backGroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color:backGroundColor
      ),
    );
  }
}