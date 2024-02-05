import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/MyAppColor.dart';
import '../../../../../utils/constants/MyAppTextStrings.dart';

class MyAppLoginDivider extends StatelessWidget {
  const MyAppLoginDivider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? MyAppColors.darkGrey : MyAppColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(MyAppString.orSignInWith.capitalize! ,style: Theme.of(context).textTheme.labelMedium,),

        Flexible(
          child: Divider(
            color: dark ? MyAppColors.darkGrey : MyAppColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),

      ],
    );
  }
}
