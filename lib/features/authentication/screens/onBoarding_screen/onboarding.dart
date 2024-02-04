import 'package:ecommerceapp/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecommerceapp/utils/constants/ImageStrings.dart';
import 'package:ecommerceapp/utils/constants/MyAppColor.dart';
import 'package:ecommerceapp/utils/constants/MyAppSizes.dart';

import 'package:ecommerceapp/utils/constants/MyAppTextStrings.dart';
import 'package:ecommerceapp/utils/device/MyDevicesUtils.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/on_boarding_widgets.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              onBoardingPages(

                  imagePath: MyAppImages.onBoardingImage1,
                  title: MyAppString.onBoarding1,
                  subTitle: MyAppString.onBoarding11
              ),
              onBoardingPages(

                  imagePath: MyAppImages.onBoardingImage2,
                  title: MyAppString.onBoarding2,
                  subTitle: MyAppString.onBoarding22

              ),
              onBoardingPages(

                  imagePath: MyAppImages.onBoardingImage3,
                  title: MyAppString.onBoarding3,
                  subTitle: MyAppString.onBoarding33

              ),
            ],
          ),
          OnboardingSkip(),
          on_boarding_dot_navigation(),
          on_boarding_next()
        ],
      ),
    );
  }
}

// class OnboardingSkip extends StatelessWidget {
//   const OnboardingSkip({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//         top: MyDevicesUtils.getAppBarHeight(), right: MyAppSizes.defaultSpace,
//         child: TextButton(onPressed: (){}, child: Text('Skip'),));
//   }
// }
//
// class onBoardingPages extends StatelessWidget {
//   const onBoardingPages({
//     super.key, required this.title,required this.subTitle , required this.imagePath
//   });
//
//   final String title , subTitle , imagePath;
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(top: 50 ),
//       child: Column(
//
//         children: [
//           Image(
//
//               height: MyAppHelperFunctions.screenWidth() * 0.8,
//               width: MyAppHelperFunctions.screenWidth() * 0.6,
//               image: AssetImage(imagePath)),
//           SizedBox(
//             height: MyAppSizes.spaceBtwItems,
//           ),
//           Text(
//             title,
//             style: Theme.of(context).textTheme.headlineMedium,
//             textAlign: TextAlign.center,
//           ),
//           SizedBox(
//             height: MyAppSizes.spaceBtwItems,
//           ),
//           Text(
//             subTitle,
//             style: Theme.of(context).textTheme.bodyMedium,
//             textAlign: TextAlign.center,
//           )
//         ],
//       ),
//     );
//   }
// }
