import 'package:ecommerceapp/features/authentication/screens/password_configurations/forget_password.dart';
import 'package:ecommerceapp/features/authentication/screens/sigup_screen/signUp_screen.dart';
import 'package:ecommerceapp/navigation_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/MyAppSizes.dart';
import '../../../../../utils/constants/MyAppTextStrings.dart';

class MyAppLoginForm extends StatelessWidget {
  const MyAppLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding:
          const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              //email
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: MyAppString.email),
              ),


              const SizedBox(
                height: MyAppSizes.spaceBtwInputFields,
              ),

              //password
              TextFormField(
                decoration: const InputDecoration(
                    suffixIcon: Icon(Iconsax.eye_slash),
                    labelText: MyAppString.password),
              ),
              const SizedBox(
                height: MyAppSizes.spaceBtwInputFields,
              ),

              //remember password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //remember

                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(MyAppString.rememberMe),

                  //forget password

                  TextButton(
                      onPressed: () =>Get.to(()=>ForgetPassword()),
                      child: const Text(MyAppString.forgetPassword))
                ],
              ),
              const SizedBox(
                height: MyAppSizes.spaceBtwSections,
              ),

              ///sign in button

              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () =>Get.to(()=>NavigationMenu()), child: const Text(MyAppString.signIn))),

              const SizedBox(height: MyAppSizes.spaceBtwInputFields,),
              SizedBox(
                  width: double.infinity,

                  child: OutlinedButton(
                      onPressed: () =>Get.to(() => const SiginUpScreen()),
                      child: const Text(MyAppString.createAccount))),
            ],
          ),
        ));
  }
}
