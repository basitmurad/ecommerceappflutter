import 'package:flutter/cupertino.dart';

import '../../../utils/constants/ImageStrings.dart';
import '../../../utils/constants/MyAppColor.dart';
import '../../../utils/constants/MyAppSizes.dart';
import '../../../utils/helpers/MyAppHelper.dart';

class AppCircularImage extends StatelessWidget {
  const AppCircularImage({
    super.key,
    this.fit  = BoxFit.cover,
     this.image = MyAppImages.cosmeticsIcon,
     this.isNetworkImage = false,
    this.backgroundColor,
    this.overlayColor,
     this.width = 46,
     this.height = 46,
     this.padding = MyAppSizes.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? backgroundColor;
  final Color? overlayColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: MyAppHelperFunctions.isDarkMode(context)
            ? MyAppColors.black
            : MyAppColors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        fit: fit  ,
        image:  isNetworkImage ? NetworkImage(image) : AssetImage as ImageProvider,
        color: overlayColor
      ),
    );
  }
}
