import 'package:ecommerceapp/features/shop/screens/home/widgets/MyAppHomeCategories.dart';
import 'package:ecommerceapp/features/shop/screens/home/widgets/app_bar.dart';
import 'package:ecommerceapp/utils/constants/ImageStrings.dart';
import 'package:ecommerceapp/utils/constants/MyAppColor.dart';
import 'package:ecommerceapp/utils/constants/MyAppSizes.dart';
import 'package:ecommerceapp/utils/helpers/MyAppHelper.dart';

import 'package:flutter/material.dart';
import '../../../../common/widgets/custum_shape/container/MyAppPrimaryHeader.dart';
import '../../../../common/widgets/custum_shape/container/MyAppSearchBar.dart';
import '../../../../common/widgets/image_vertical_text/MyAppVerticalImageText.dart';
import '../../../../common/widgets/text/text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyAppPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///appbar
                  app_bar(),


                  SizedBox(height: MyAppSizes.spaceBtwSections,),
                  ///search bar

                  MyAppSearchBar(text: 'Search in store',),
                  SizedBox(height: MyAppSizes.spaceBtwSections,),
                  /// categories
                  
                  Padding(padding: EdgeInsets.only(left: MyAppSizes.defaultSpace) ,child: Column(children: [

                    MyAppSectionHeading(title: 'Papular Categories', showActionButtion: false,),
                    SizedBox(height: MyAppSizes.spaceBtwItems,),


                    MyAppHomeCategories(),

                  ],),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




