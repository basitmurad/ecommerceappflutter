import 'package:flutter/cupertino.dart';

import '../../../utils/constants/ImageStrings.dart';
import '../../../utils/constants/MyAppColor.dart';
import '../../../utils/constants/MyAppSizes.dart';
import '../../../utils/helpers/MyAppHelper.dart';

class ImageW extends StatelessWidget {
  const ImageW({
    super.key,
    this.fit,
    required this.image,
    required this.isNetworkImage,
    this.backgroundColor,
    this.overlayColor,
     this.width  = 36,
     this.height = 36,
    this.padding = const EdgeInsets.all(5)
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? backgroundColor;
  final Color? overlayColor;
  final double width, height;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,

      decoration: BoxDecoration(
          color:
          MyAppHelperFunctions.isDarkMode(context)
              ? MyAppColors.black
              : MyAppColors.white,
          borderRadius: BorderRadius.circular(100)),
      child: Image(
        image: AssetImage(MyAppImages.cosmeticsIcon),
        color: MyAppHelperFunctions.isDarkMode(context)
            ? MyAppColors.white
            : MyAppColors.dark,
      ),
    );
  }
}
