import 'package:ecommerceapp/common/widgets/custom_appbar/AppBar.dart';
import 'package:ecommerceapp/features/shop/screens/home/widgets/app_bar.dart';
import 'package:ecommerceapp/utils/constants/MyAppColor.dart';
import 'package:ecommerceapp/utils/constants/MyAppTextStrings.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custum_shape/container/MyAppPrimaryHeader.dart';
import '../../../../common/widgets/product_cart/MyAppCartCounter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyAppPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///appbar
                  app_bar(),

                  ///search bar

                  /// categories
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
