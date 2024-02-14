  import 'package:carousel_slider/carousel_slider.dart';
  import 'package:ecommerceapp/MyApps.dart';
  import 'package:ecommerceapp/common/widgets/custum_shape/container/AppCircularContainer.dart';
  import 'package:ecommerceapp/features/shop/screens/home/widgets/MyAppHomeCategories.dart';
  import 'package:ecommerceapp/features/shop/screens/home/widgets/app_bar.dart';
import 'package:ecommerceapp/features/shop/screens/home/widgets/home_slider.dart';
  import 'package:ecommerceapp/utils/constants/ImageStrings.dart';
  import 'package:ecommerceapp/utils/constants/MyAppColor.dart';
  import 'package:ecommerceapp/utils/constants/MyAppSizes.dart';
  import 'package:flutter/material.dart';
  import '../../../../common/widgets/custum_shape/container/MyAppPrimaryHeader.dart';
  import '../../../../common/widgets/custum_shape/container/MyAppSearchBar.dart';
  import '../../../../common/widgets/images/round_image.dart';
  import '../../../../common/widgets/text/text.dart';

  class HomeScreen extends StatelessWidget {
    const HomeScreen({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const MyAppPrimaryHeaderContainer(
                child: Column(
                  children: [
                    ///appbar

                    app_bar(),

                    SizedBox(
                      height: MyAppSizes.spaceBtwSections,
                    ),

                    ///search bar

                    MyAppSearchBar(
                      text: 'Search in store',
                    ),
                    SizedBox(
                      height: MyAppSizes.spaceBtwSections,
                    ),

                    /// categories

                    Padding(
                      padding: EdgeInsets.only(left: MyAppSizes.defaultSpace),
                      child: Column(
                        children: [
                          MyAppSectionHeading(
                            title: 'Popular Categories',
                            showActionButtion: false,
                            textColor: MyAppColors.white,
                          ),
                          SizedBox(
                            height: MyAppSizes.spaceBtwItems,
                          ),

                          MyAppHomeCategories(),

                          /// body
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(MyAppSizes.defaultSpace),
                child: HomeSlider(

                    banners: [
                      MyAppImages.promoBanner3,
                      MyAppImages.promoBanner2,
                      MyAppImages.promoBanner3,
                      MyAppImages.promoBanner3,]
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

