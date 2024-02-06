import 'package:ecommerceapp/utils/helpers/MyAppHelper.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerceapp/utils/constants/MyAppColor.dart';
import 'package:ecommerceapp/utils/constants/MyAppTextStrings.dart';
import 'package:flutter/material.dart';

class terms_and_condition extends StatelessWidget {
  const terms_and_condition({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(
          width: 11,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${MyAppString.iAgreeTo}',
              style: Theme.of(context).textTheme.labelSmall),
          TextSpan(
              text: ' ${MyAppString.privacyPolicy}',
              style: Theme.of(context).textTheme.labelMedium!.apply(
                  color: dark ? MyAppColors.white : MyAppColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      dark ? MyAppColors.white : MyAppColors.primary)),
          TextSpan(
              text: ' ${MyAppString.and}',
              style: Theme.of(context).textTheme.labelSmall),
          TextSpan(
              text: ' ${MyAppString.termsOfUse} ',
              style: Theme.of(context).textTheme.labelMedium!.apply(
                  color: dark ? MyAppColors.white : MyAppColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      dark ? MyAppColors.white : MyAppColors.primary)),
        ]))
      ],
    );
  }
}
