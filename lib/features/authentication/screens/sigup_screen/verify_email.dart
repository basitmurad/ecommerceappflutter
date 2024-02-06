import 'package:ecommerceapp/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerceapp/features/authentication/screens/login_screen/loginscreen.dart';
import 'package:ecommerceapp/utils/constants/ImageStrings.dart';
import 'package:ecommerceapp/utils/constants/MyAppSizes.dart';
import 'package:ecommerceapp/utils/constants/MyAppTextStrings.dart';
import 'package:ecommerceapp/utils/helpers/MyAppHelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        automaticallyImplyLeading: false,
        actions:[ IconButton(onPressed: ()=>Get.offAll(()=>const LoginScreen()) , icon: const Icon(CupertinoIcons.clear),),]

      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(MyAppSizes.defaultSpace),
        child: Column(
          children: [
            ///image
            Image(image: const AssetImage(MyAppImages.deliveredEmailIllustration)
            ,width: MyAppHelperFunctions.screenWidth() * 0.6,),

            const SizedBox(height: MyAppSizes.spaceBtwSections,),

            ///title and sub title
            Text(MyAppString.confirmEmail ,style: Theme.of(context).textTheme.headlineSmall, textAlign: TextAlign.center,),
            const SizedBox(height: MyAppSizes.spaceBtwItems,),
            Text('basitmurad@gmail.com' ,style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
            const SizedBox(height: MyAppSizes.spaceBtwItems,),
            Text(MyAppString.confirmEmailSubTitle ,style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),


            ///button

            const SizedBox(height: MyAppSizes.spaceBtwSections,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () =>Get.to(() =>SuccessScreen(
                image: MyAppImages.staticSuccessIllustration,
                title: MyAppString.yourAccountCreatedTitle,
                subTitle: MyAppString.yourAccountCreatedSubTitle,
                onPressed: ()=>Get.to(()=>LoginScreen()),
              )), child: const Text(MyAppString.tContinue ),),
            ),
            const SizedBox(height: MyAppSizes.spaceBtwItems,),
            SizedBox(
              width: double.infinity,
              child: TextButton(onPressed: (){} , child: const Text(MyAppString.resendEmail ),),
            ),



          ],
        ),
      ),
    );
  }
}
