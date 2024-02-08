import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/MyAppColor.dart';
import '../../../../utils/constants/MyAppSizes.dart';
import '../../../../utils/device/MyDevicesUtils.dart';
import '../../../../utils/helpers/MyAppHelper.dart';

class MyAppSearchBar extends StatelessWidget {
  const MyAppSearchBar({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackGround = true,
    this.showBorder = true,
    this.ontap,
  });

  final String text;
  final IconData? icon;
  final bool showBackGround , showBorder;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {

    final dark = MyAppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: MyAppSizes.defaultSpace),
        child: Container(
          width: MyDevicesUtils.getScreenWidth(context ),
          padding:  const EdgeInsets.all(MyAppSizes.md),
          decoration: BoxDecoration(
            color: showBackGround ?  dark ? MyAppColors.dark : MyAppColors.light  : Colors.transparent
            ,
            borderRadius: BorderRadius.circular(MyAppSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: MyAppColors.grey) : null,

          ),
          child:   Row(
            children: [
              Icon(icon ,color: MyAppColors.darkGrey,),
              const SizedBox(width: MyAppSizes.spaceBtwItems,),
              Text(text , style: Theme.of(context).textTheme.bodySmall,)
            ],
          ),
        ),
      ),
    );
  }
}
