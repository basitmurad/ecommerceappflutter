import 'package:ecommerceapp/utils/constants/ImageStrings.dart';
import 'package:ecommerceapp/utils/constants/MyAppSizes.dart';
import 'package:ecommerceapp/utils/constants/MyAppTextStrings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/helpers/MyAppHelper.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          
          IconButton(onPressed: ()=>Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MyAppSizes.defaultSpace),
          child: Column(children: [
            ///image
            Image(image:  const AssetImage(MyAppImages.deliveredEmailIllustration)
              ,width: MyAppHelperFunctions.screenWidth() * 0.6,),

            const SizedBox(height: MyAppSizes.spaceBtwSections,),

            ///title and sub title
            Text(MyAppString.changeYourPasswordTitle ,style: Theme.of(context).textTheme.headlineSmall, textAlign: TextAlign.center,),
            const SizedBox(height: MyAppSizes.spaceBtwItems,),
            Text('basitmurad@gmail.com' ,style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
            const SizedBox(height: MyAppSizes.spaceBtwItems,),
            Text(MyAppString.changeYourPasswordSubTitle  ,style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),

            const SizedBox(height: MyAppSizes.spaceBtwSections,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){}, child: const Text(MyAppString.done ),),
            ),
            const SizedBox(height: MyAppSizes.spaceBtwItems,),

            SizedBox(
              width: double.infinity,
              child: TextButton(onPressed: (){}, child: const Text(MyAppString.resendEmail ),),
            ),

          ],),
        ),
      ),

    );
  }
}
