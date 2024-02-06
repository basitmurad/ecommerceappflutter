import 'package:ecommerceapp/features/authentication/screens/password_configurations/reset_password.dart';
import 'package:ecommerceapp/utils/constants/MyAppSizes.dart';
import 'package:ecommerceapp/utils/constants/MyAppTextStrings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(MyAppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///heading
            Text(
              MyAppString.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: MyAppSizes.spaceBtwItems,
            ),

            ///heading
            Text(
              MyAppString.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: MyAppSizes.spaceBtwSections * 2,
            ),

            ///text fields

            TextFormField(
              decoration: const InputDecoration(
                  labelText: MyAppString.email,
                  prefixIcon: Icon(Iconsax.direct)),
            ),

            SizedBox(height: MyAppSizes.spaceBtwSections,),
            ///submit button

            SizedBox(

              width: double.infinity,
                child: ElevatedButton(onPressed: ()=> Get.off(()=>ResetPassword()), child: Text(MyAppString.submit)))
          ],
        ),
      ),
    );
  }
}
