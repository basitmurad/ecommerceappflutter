
import 'package:ecommerceapp/common/widgets/text/brand_title_text.dart';
import 'package:ecommerceapp/common/widgets/text/product_title_text.dart';
import 'package:ecommerceapp/utils/constants/MyAppColor.dart';
import 'package:ecommerceapp/utils/constants/MyAppSizes.dart';
import 'package:ecommerceapp/utils/constants/MyEnums.dart';
import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';

class MyAppBrandIconText extends StatelessWidget {
  const MyAppBrandIconText({super.key,
    required this.title,
    this.maxLines=1,
    this.textColor,
    this.iconColor=MyAppColors.primary,
    this.textAlign=TextAlign.center,
    this.brandTextSize=TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: MyAppBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: MyAppSizes.xs),
        Icon(Iconsax.verify5, color: iconColor, size: MyAppSizes.iconXs),
      ],
    );
  }
}
