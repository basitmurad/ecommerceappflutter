import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/MyAppColor.dart';
import '../../../utils/constants/MyAppSizes.dart';
import '../../../utils/helpers/MyAppHelper.dart';

class MyAppVerticalImageText extends StatelessWidget {
  const MyAppVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    required this.textColor,
    this.backGroundColor = Colors.white,
    this.ontap,
  });



  final String image , title;
  final Color textColor ;
  final Color? backGroundColor;
  final void Function()? ontap;


  @override
  Widget build(BuildContext context) {

    final dark =MyAppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(right: MyAppSizes.spaceBtwItems),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 56,
                height: 56,
                padding: const EdgeInsets.all(MyAppSizes.sm),
                decoration: BoxDecoration(
                    color: backGroundColor ?? (dark? MyAppColors.black : MyAppColors.white),
                    borderRadius: BorderRadius.circular(100)
                ),
                child:  Center(
                  child: Image(image:  AssetImage(image),fit: BoxFit.cover, color: (dark? MyAppColors.light : MyAppColors.dark)),),
              ),

              const SizedBox(height:4,),
              SizedBox(
                  width: 55,
                  child: Text(title , maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium!.apply(color:textColor))),



            ],
          ),
        ),
      ),
    );
  }
}
