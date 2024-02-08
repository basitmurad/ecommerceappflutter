import 'package:ecommerceapp/features/shop/screens/home/widgets/MyAppHomeCategories.dart';
import 'package:ecommerceapp/features/shop/screens/home/widgets/app_bar.dart';
import 'package:ecommerceapp/utils/constants/ImageStrings.dart';
import 'package:ecommerceapp/utils/constants/MyAppColor.dart';
import 'package:ecommerceapp/utils/constants/MyAppSizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custum_shape/container/MyAppPrimaryHeader.dart';
import '../../../../common/widgets/custum_shape/container/MyAppSearchBar.dart';
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

                    MyAppSectionHeading(
                      title: 'Popular Categories',
                      showActionButtion: false, textColor: MyAppColors.white,),
                    SizedBox(height: MyAppSizes.spaceBtwItems,),


                    MyAppHomeCategories(),

                    /// body



                  ],),)
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(MyAppSizes.defaultSpace),


              child: MyAppRoundedImage(imageUrl: MyAppImages.promoBanner3),
            ),

          ],
        ),
      ),
    );
  }
}

class MyAppRoundedImage extends StatelessWidget {
  const MyAppRoundedImage({
    super.key,
    this.width = 150,
    this.height = 158,
    required this.imageUrl,
     this.applyImageRadius = false,
    this.boxBorders, 
     this.backGroundColor =MyAppColors.white,
    this.boxFit,
    this.padding,
     this.isNetworkImage = false,
    this.onPressed, 
     this.borderRadius =MyAppSizes.md,
  });

  final double? width , height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? boxBorders;
  final Color backGroundColor;
  final BoxFit? boxFit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: boxBorders,
            color: backGroundColor,
            borderRadius: BorderRadius.circular(borderRadius)

        ),
        child: ClipRRect(
            borderRadius: applyImageRadius ? BorderRadius.circular(MyAppSizes.md) :BorderRadius.zero,
            child:  Image(image: isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl)  as ImageProvider, fit: BoxFit.contain,)),
      ),
    );
  }
}




