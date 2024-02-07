import 'package:ecommerceapp/features/authentication/screens/onBoarding_screen/onboarding.dart';
import 'package:ecommerceapp/utils/theme/MyAppTheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        themeMode: ThemeMode.system,
        theme: MyAppTheme.lightTheme,
        darkTheme: MyAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),

    );
  }
}

