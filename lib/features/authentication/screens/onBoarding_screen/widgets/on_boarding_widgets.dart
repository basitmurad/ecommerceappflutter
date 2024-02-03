import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../utils/constants/MyAppColor.dart';
import '../../../../../utils/constants/MyAppSizes.dart';
import '../../../../../utils/device/MyDevicesUtils.dart';
import '../../../../../utils/helpers/MyAppHelper.dart';
import '../../../controllers/onboarding_controller.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: MyDevicesUtils.getAppBarHeight(), right: MyAppSizes.defaultSpace,
        child: TextButton(onPressed: (){
          OnBoardingController.instance.skipPage();

        }, child: Text('Skip', style: Theme.of(context).textTheme.titleMedium,) ,));
  }
}

class onBoardingPages extends StatelessWidget {
  const onBoardingPages({
    super.key, required this.title,required this.subTitle , required this.imagePath
  });

  final String title , subTitle , imagePath;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50 ),
      child: Column(

        children: [
          Image(

              height: MyAppHelperFunctions.screenWidth() * 0.8,
              width: MyAppHelperFunctions.screenWidth() * 0.6,
              image: AssetImage(imagePath)),
          SizedBox(
            height: MyAppSizes.spaceBtwItems,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: MyAppSizes.spaceBtwItems,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class on_boarding_dot_navigation extends StatelessWidget {
  const on_boarding_dot_navigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller = OnBoardingController.instance;
    final dark = MyAppHelperFunctions.isDarkMode(context);
    return Positioned(

        bottom: MyDevicesUtils.getBottomNavigationHeight() +20 ,
        left: MyAppSizes.defaultSpace,

        child: SmoothPageIndicator(controller: controller.pageController,
            onDotClicked :controller.dotNavigatorClick,count: 3 ,
            effect:ExpandingDotsEffect(activeDotColor: dark ? MyAppColors.light:MyAppColors.dark ,dotHeight: 6)
        ));
  }
}

class on_boarding_next extends StatelessWidget {
  const on_boarding_next({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return Positioned(
        bottom: MyDevicesUtils.getBottomNavigationHeight() ,
        right: MyAppSizes.defaultSpace,
        child: ElevatedButton(

          style: ElevatedButton.styleFrom(

              shape: CircleBorder() ,backgroundColor: dark?MyAppColors.primaryColor:Colors.black),
          onPressed: (){

            OnBoardingController.instance.nextPage();

          }, child: Icon(Icons.navigate_next),));
  }
}


