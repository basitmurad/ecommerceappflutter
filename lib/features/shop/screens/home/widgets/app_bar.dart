import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_appbar/AppBar.dart';
import '../../../../../common/widgets/product_cart/MyAppCartCounter.dart';
import '../../../../../utils/constants/MyAppColor.dart';
import '../../../../../utils/constants/MyAppTextStrings.dart';

class app_bar extends StatelessWidget {
  const app_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(MyAppString.homeAppBarTitle ,style: Theme.of(context).textTheme.labelMedium!.apply(color: MyAppColors.grey),),
          Text(MyAppString.homeAppbarSubTitle ,style: Theme.of(context).textTheme.headlineSmall!.apply(color: MyAppColors.white),),
        ],
      ),

      actions: [

        MyAppCartCounter( onPressed:(){} ,iconColor: Colors.white,)
      ],
    );
  }
}
