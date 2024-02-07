import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/MyAppColor.dart';

class MyAppCartCounter extends StatelessWidget {
  const MyAppCartCounter({
    super.key, required this.onPressed, required this.iconColor,
  });

  final VoidCallback onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [


        IconButton(onPressed: onPressed, icon:Icon(Iconsax.shopping_bag,color: iconColor,)),
        Positioned(
          right: 0,
          child: Container(

            width: 18 ,
            height: 18,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.black.withOpacity(0.5)
            ),
            child: Center(
              child: Text('2' ,style: Theme.of(context).textTheme.labelLarge!.apply(color: MyAppColors.white),),
            ),
          ),
        )
      ],
    );
  }
}
