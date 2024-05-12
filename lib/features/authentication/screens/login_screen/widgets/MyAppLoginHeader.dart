import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/ImageStrings.dart';
import '../../../../../utils/constants/MyAppSizes.dart';
import '../../../../../utils/constants/MyAppTextStrings.dart';

class MyAppLoginHeader extends StatelessWidget {
  const MyAppLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
              dark ? MyAppImages.lightAppLogo : MyAppImages.
              darkAppLogo),
        ),
        Text(
          MyAppString.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: MyAppSizes.sm,
        ),
        Text(
          MyAppString.loginSubTitle,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
  }
}
