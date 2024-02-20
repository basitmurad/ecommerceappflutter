import 'package:ecommerceapp/common/widgets/custom_appbar/AppBar.dart';
import 'package:ecommerceapp/common/widgets/custum_shape/container/MyAppSearchBar.dart';
import 'package:ecommerceapp/common/widgets/custum_shape/container/rounded_container.dart';
import 'package:ecommerceapp/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerceapp/common/widgets/product/MyAppCartCounter.dart';
import 'package:ecommerceapp/common/widgets/text/brand_title_withIcon.dart';
import 'package:ecommerceapp/common/widgets/text/text.dart';
import 'package:ecommerceapp/utils/constants/ImageStrings.dart';
import 'package:ecommerceapp/utils/constants/MyAppColor.dart';
import 'package:ecommerceapp/utils/constants/MyAppSizes.dart';
import 'package:ecommerceapp/utils/constants/MyEnums.dart';
import 'package:ecommerceapp/utils/helpers/MyAppHelper.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/images/circular_image_new.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          MyAppCartCounter(
            onPressed: () {},
            iconColor: Colors.black,
          )
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: MyAppHelperFunctions.isDarkMode(context)
                  ? MyAppColors.black
                  : MyAppColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(MyAppSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    ///search bar
                    const SizedBox(
                      height: MyAppSizes.spaceBtwItems,
                    ),
                    const MyAppSearchBar(
                      text: '',
                      showBorder: true,
                      showBackGround: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(
                      height: MyAppSizes.spaceBtwSections,
                    ),

                    ///featured brand

                    MyAppSectionHeading(
                        title: 'Featured Brands', onPressed: () {}),

                    MyAppGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: MyAppRoundedContainer(
                              padding: const EdgeInsets.all(
                                MyAppSizes.sm,
                              ),
                              showBorder: true,
                              backgroundColor: Colors.transparent,
                              child: Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Flexible(
                                          child: ImageW(
                                            image: MyAppImages.cosmeticsIcon,
                                            isNetworkImage: false,
                                            backgroundColor: Colors.black,
                                            overlayColor:
                                                MyAppHelperFunctions.isDarkMode(
                                                        context)
                                                    ? MyAppColors.black
                                                    : MyAppColors.dark,
                                          ),
                                        ),

                                        const SizedBox(width: MyAppSizes.spaceBtwItems/2),
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const MyAppBrandIconText(
                                                title: 'Nike',
                                                brandTextSize: TextSizes.medium,
                                              ),
                                              Text(
                                                '256 products',
                                                overflow: TextOverflow.ellipsis,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelSmall,
                                              )
                                            ],
                                          ),
                                        )
                                        // AppCircularImage(
                                        //   isNetworkImage: false,
                                        //   image: MyAppImages.cosmeticsIcon,
                                        //   backgroundColor: Colors.transparent,
                                        //   overlayColor: MyAppHelperFunctions.isDarkMode(context) ?  MyAppColors.black : MyAppColors.dark,
                                        // )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        })
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}
