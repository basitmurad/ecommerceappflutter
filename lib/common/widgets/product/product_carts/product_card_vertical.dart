import 'package:ecommerceapp/common/styles/MyAppShadowStyle.dart';
import 'package:ecommerceapp/common/widgets/custum_shape/container/rounded_container.dart';
import 'package:ecommerceapp/common/widgets/images/round_image.dart';
import 'package:ecommerceapp/utils/constants/ImageStrings.dart';
import 'package:ecommerceapp/utils/constants/MyAppColor.dart';
import 'package:ecommerceapp/utils/constants/MyAppSizes.dart';
import 'package:ecommerceapp/utils/helpers/MyAppHelper.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../icon/app_circular_icon.dart';

class AppProductVertical extends StatelessWidget {
  const AppProductVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      height: 180,
      decoration: BoxDecoration(
          boxShadow: [MyAppShadowStyle.shadowVertical],
          borderRadius: BorderRadius.circular(MyAppSizes.productImageRadius),
          color: dark ? MyAppColors.darkGrey : MyAppColors.black),
      child: Column(
        children: [
          ///thumbnail wishlist discount button

          MyAppRoundedContainer(
            height: 180,
            backgroundColor: dark ? MyAppColors.dark : MyAppColors.light,
            child: Stack(
              children: [
                ///thumbnail image

                const MyAppRoundedImage(
                  imageUrl: MyAppImages.productImage1,
                  applyImageRadius: true,
                ),

                /// sale tag
                Positioned(
                  top: 12,
                  child: MyAppRoundedContainer(
                    radius: MyAppSizes.sm,
                    backgroundColor: MyAppColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: MyAppSizes.sm, vertical: MyAppSizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .apply(color: MyAppColors.black),
                    ),
                  ),
                ),

                const Positioned(
                    top: 0,
                    right: 0,
                    child: AppCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ))
              ],
            ),
          ),
          SizedBox(height: MyAppSizes.spaceBtwItems/2,),
          Text('Green Nike Air Shoes' ,style: Theme.of(context).textTheme.titleSmall,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.left,)

          ///detail

        ],
      ),
    );
  }
}

