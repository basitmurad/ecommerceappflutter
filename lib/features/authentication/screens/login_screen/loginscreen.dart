import 'package:ecommerceapp/common/styles/MyAppSpaces.dart';
import 'package:ecommerceapp/features/authentication/screens/login_screen/widgets/MyAppLoginForm.dart';
import 'package:ecommerceapp/features/authentication/screens/login_screen/widgets/MyAppLoginHeader.dart';

import 'package:ecommerceapp/utils/constants/MyAppSizes.dart';

import 'package:ecommerceapp/utils/helpers/MyAppHelper.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/login_signup/MyAppLoginDivider.dart';
import '../../../../common/widgets/login_signup/MyAppSocialButton.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MyAppSpaces.paddingwithbarheight,

          child: Column(
            children: [
              MyAppLoginHeader(dark: dark),

              ///login
              const MyAppLoginForm(),

              ///divider
              MyAppLoginDivider(dark: dark),

              ///footer

              const SizedBox(height: MyAppSizes.spaceBtwItems,),
              const MyAppLoginSocialButton()
            ],
          ),
        ),
      ),
    );


 }
}

