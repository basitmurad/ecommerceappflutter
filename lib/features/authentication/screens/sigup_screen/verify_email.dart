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
        actions:[ IconButton(onPressed: ()=>Get.offAll(()=>LoginScreen()) , icon: Icon(CupertinoIcons.clear),),]

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(MyAppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///image
            Image(image: AssetImage(MyAppImages.deliveredEmailIllustration)
            ,width: MyAppHelperFunctions.screenWidth() * 0.6,),

            ///title and sub title
            Text(MyAppString.confirmEmail ,style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,)

            ///button
          ],
        ),
      ),
    );
  }
}
