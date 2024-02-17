import 'package:ecommerceapp/common/styles/MyAppShadowStyle.dart';
import 'package:ecommerceapp/common/widgets/custum_shape/container/rounded_container.dart';
import 'package:ecommerceapp/common/widgets/images/round_image.dart';
import 'package:ecommerceapp/common/widgets/text/product_price_text.dart';
import 'package:ecommerceapp/common/widgets/text/product_title_text.dart';
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
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        decoration: BoxDecoration(
            boxShadow: [MyAppShadowStyle.shadowVertical],
            borderRadius: BorderRadius.circular(MyAppSizes.productImageRadius),
            color: dark ? MyAppColors.darkGrey : MyAppColors.white),
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
      
            const SizedBox(
              height: MyAppSizes.spaceBtwItems / 2,
            ),
             Padding(
              padding: const EdgeInsets.only(left: MyAppSizes.sm),
      
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const MyAppProductTitleText(title: 'Green Nike Air Shoes',smallSize: true,),
      
                  const SizedBox(
                    height: MyAppSizes.spaceBtwItems / 2,
                  ),
      
                  Row(
                    children: [
                      Text('Nike' ,overflow: TextOverflow.ellipsis,style: Theme.of(context).textTheme.labelMedium,),
                      const SizedBox(width: MyAppSizes.xs,),
                      const Icon(Iconsax.verify5,color: MyAppColors.primary ,size: MyAppSizes.iconXs,)
                    ],
                  ),
                  // Spacer(),
      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyAppProductPriceText(price: '35.90',),
                      Container(
                        decoration:  const BoxDecoration(
                          color: MyAppColors.dark ,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(MyAppSizes.cardRadiusMd),
                              bottomRight:Radius.circular(MyAppSizes.productImageRadius) )
                        ),
                        child: const SizedBox(
      
                            width: MyAppSizes.iconLg*1.2,
                            height: MyAppSizes.iconLg*1.2,
                            child: Center(child: Icon(Iconsax.add ,color: MyAppColors.white ,))),
                      )
                    ],
                  )
                ],
              ),
            )
      
            ///detail
          ],
        ),
      ),
    );
  }
}
