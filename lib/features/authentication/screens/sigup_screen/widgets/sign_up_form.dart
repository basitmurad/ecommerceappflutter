import 'package:ecommerceapp/features/authentication/screens/sigup_screen/verify_email.dart';
import 'package:ecommerceapp/features/authentication/screens/sigup_screen/widgets/terms_and_conditions.dart';
import 'package:ecommerceapp/utils/helpers/MyAppHelper.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerceapp/utils/constants/MyAppSizes.dart';
import 'package:ecommerceapp/utils/constants/MyAppTextStrings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class sign_up_form extends StatelessWidget {
  const sign_up_form({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);
    return Form(
        child: Column(
      children: [
        /// first name and last name
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: MyAppString.firstName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(
              width: MyAppSizes.spaceBtwInputFields,
            ),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: MyAppString.lastName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
          ],
        ),

        /// userName
        const SizedBox(
          height: MyAppSizes.spaceBtwInputFields,
        ),

        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: MyAppString.username, prefixIcon: Icon(Iconsax.user)),
        ),

        ///  email

        const SizedBox(
          height: MyAppSizes.spaceBtwInputFields,
        ),

        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: MyAppString.email, prefixIcon: Icon(Iconsax.direct)),
        ),

        ///  number

        const SizedBox(
          height: MyAppSizes.spaceBtwInputFields,
        ),

        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: MyAppString.phoneNo, prefixIcon: Icon(Iconsax.call)),
        ),

        ///  password
        const SizedBox(
          height: MyAppSizes.spaceBtwInputFields,
        ),

        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: MyAppString.password,
              suffixIcon: Icon(Iconsax.eye_slash),
              prefixIcon: Icon(Iconsax.password_check)),
        ),

        const SizedBox(
          height: MyAppSizes.spaceBtwInputFields,
        ),

        /// term and condition

        const terms_and_condition(),

        const SizedBox(
          height: MyAppSizes.spaceBtwItems,
        ),

        /// sign up up button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () =>Get.to(() => EmailVerification()),
            child: const Text(MyAppString.createAccount),
          ),
        ),
      ],
    ));
  }
}
