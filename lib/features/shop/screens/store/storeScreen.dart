import 'package:ecommerceapp/common/widgets/custom_appbar/AppBar.dart';
import 'package:ecommerceapp/common/widgets/custum_shape/container/MyAppSearchBar.dart';
import 'package:ecommerceapp/common/widgets/custum_shape/container/rounded_container.dart';
import 'package:ecommerceapp/common/widgets/product/MyAppCartCounter.dart';
import 'package:ecommerceapp/common/widgets/text/text.dart';
import 'package:ecommerceapp/utils/constants/ImageStrings.dart';
import 'package:ecommerceapp/utils/constants/MyAppColor.dart';
import 'package:ecommerceapp/utils/constants/MyAppSizes.dart';
import 'package:ecommerceapp/utils/helpers/MyAppHelper.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/images/app_circular_images.dart';

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
                      MyAppRoundedContainer(
                      padding: EdgeInsets.all(MyAppSizes.sm,),
                      showBorder: true,
                      backgroundColor: Colors.white,
                      child: Expanded(
                        child: Row(

                          children: [
                            AppCircularImage(
                              width: 10,
                              height: 10,
                            )
                        
                          ],
                        ),
                      ),
                    ),

                    // MyAppRoundedContainer(
                    //   padding: EdgeInsets.all(8.0),
                    //   showBorder: true,
                    //     backgroundColor: Colors.transparent,
                    //   child: Row(
                    //     children: [
                    //       AppCircularImage(
                    //         width: 100,
                    //         height: 100,
                    //         isNetworkImage: false,
                    //         image: MyAppImages.cosmeticsIcon,
                    //         backgroundColor: Colors.black,
                    //         overlayColor: MyAppHelperFunctions.isDarkMode(context) ? MyAppColors.white : MyAppColors.black  ,
                    //       ),
                    //
                    //       // SizedBox(width: MyAppSizes.spaceBtwSections/2,)
                    //     ],
                    //   ),
                    // )
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

