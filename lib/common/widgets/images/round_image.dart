import 'package:flutter/cupertino.dart';

import '../../../utils/constants/MyAppColor.dart';
import '../../../utils/constants/MyAppSizes.dart';

class MyAppRoundedImage extends StatelessWidget {
  const MyAppRoundedImage({
    super.key,
    this.width,
    this.height ,
    required this.imageUrl,
    this.applyImageRadius = false,
    this.boxBorders,
    this.backGroundColor =MyAppColors.white,
    this.boxFit,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius =MyAppSizes.md,
  });

  final double? width , height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? boxBorders;
  final Color backGroundColor;
  final BoxFit? boxFit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: boxBorders,
            color: backGroundColor,
            borderRadius: BorderRadius.circular(borderRadius)

        ),
        child: ClipRRect(
            borderRadius: applyImageRadius ? BorderRadius.circular(MyAppSizes.md) :BorderRadius.zero,
            child:  Image(
              image: isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl)  as ImageProvider, fit: BoxFit.contain,)),
      ),
    );
  }
}
