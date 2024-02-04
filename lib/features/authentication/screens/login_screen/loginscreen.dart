import 'package:ecommerceapp/common/styles/MyAppSpaces.dart';
import 'package:ecommerceapp/utils/constants/ImageStrings.dart';
import 'package:ecommerceapp/utils/constants/MyAppColor.dart';
import 'package:ecommerceapp/utils/constants/MyAppSizes.dart';
import 'package:ecommerceapp/utils/constants/MyAppTextStrings.dart';
import 'package:ecommerceapp/utils/helpers/MyAppHelper.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return SingleChildScrollView(
      padding: MyAppSpaces.paddingwithbarheight,
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                height: 150,
                image: AssetImage(
                    dark ? MyAppImages.lightAppLogo : MyAppImages.darkAppLogo),
              ),
              Text(
                MyAppString.loginTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: MyAppSizes.sm,
              ),
              Text(
                MyAppString.loginTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
          Form(
              child: Padding(
            padding:
                EdgeInsets.symmetric(vertical: 16),
            child: Column(
              children: [
                //email
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right),
                      labelText: MyAppString.email),
                ),
                SizedBox(
                  height: MyAppSizes.spaceBtwInputFields,
                ),

                //password
                TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Iconsax.eye_slash),
                      labelText: MyAppString.password),
                ),
                SizedBox(
                  height: MyAppSizes.spaceBtwInputFields,
                ),

                //remember password
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //remember

                    Checkbox(value: true, onChanged: (value) {}),
                    Text(MyAppString.rememberMe),

                    //forget password

                    TextButton(
                        onPressed: () {},
                        child: Text(MyAppString.forgetPassword))
                  ],
                ),
                SizedBox(
                  height: MyAppSizes.spaceBtwSections,
                ),

                ///sign in button

                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text(MyAppString.signIn))),

                SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {},
                        child: Text(MyAppString.createAccount))),
              ],
            ),
          )),

          ///divider
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Divider(
                  color: dark ? MyAppColors.darkGrey : MyAppColors.grey,
                  thickness: 0.5,
                  indent: 60,
                  endIndent: 5,
                ),
              )
            ],
          )

          ///footer
        ],
      ),
    );
  }
}
