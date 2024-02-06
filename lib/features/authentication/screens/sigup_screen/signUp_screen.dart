import 'package:ecommerceapp/common/widgets/login_signup/MyAppLoginDivider.dart';
import 'package:ecommerceapp/common/widgets/login_signup/MyAppSocialButton.dart';
import 'package:ecommerceapp/features/authentication/screens/sigup_screen/widgets/sign_up_form.dart';
import 'package:ecommerceapp/utils/constants/MyAppSizes.dart';
import 'package:ecommerceapp/utils/constants/MyAppTextStrings.dart';
import 'package:ecommerceapp/utils/helpers/MyAppHelper.dart';
import 'package:flutter/material.dart';


class SiginUpScreen extends StatelessWidget {
  const SiginUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(MyAppSizes.defaultSpace1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///title
            Text(MyAppString.signupTitle, style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: MyAppSizes.spaceBtwSections,),

            ///form
            const sign_up_form(),

            const SizedBox(height: MyAppSizes.spaceBtwItems,),

            ///divider
            MyAppLoginDivider(dark: dark),
            const SizedBox(height: MyAppSizes.spaceBtwItems,),

            ///social button
            const MyAppLoginSocialButton()
          ],
        ),
      ),
    );
  }
}
