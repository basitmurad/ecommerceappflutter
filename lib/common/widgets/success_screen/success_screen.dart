import 'package:ecommerceapp/common/styles/MyAppSpaces.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/MyAppSizes.dart';
import '../../../utils/constants/MyAppTextStrings.dart';
import '../../../utils/helpers/MyAppHelper.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image , title , subTitle;
   final VoidCallback  onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: SingleChildScrollView(
  child: Padding(
    padding: MyAppSpaces.paddingwithbarheight*2,
    child: Column(
      children: [


        ///image
        Image(image:  AssetImage(image)
          ,width: MyAppHelperFunctions.screenWidth() * 0.6,),

        const SizedBox(height: MyAppSizes.spaceBtwSections,),

        ///title and sub title
        Text(title ,style: Theme.of(context).textTheme.headlineSmall, textAlign: TextAlign.center,),
        const SizedBox(height: MyAppSizes.spaceBtwItems,),
        Text('basitmurad@gmail.com' ,style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
        const SizedBox(height: MyAppSizes.spaceBtwItems,),
        Text(subTitle ,style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),

        const SizedBox(height: MyAppSizes.spaceBtwSections,),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(onPressed: onPressed, child: const Text(MyAppString.tContinue ),),
        ),
      ],
    ),
  ),
),
    );
  }
}
