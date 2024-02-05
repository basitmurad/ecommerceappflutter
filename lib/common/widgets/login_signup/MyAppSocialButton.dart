import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/constants/ImageStrings.dart';
import '../../../../../utils/constants/MyAppColor.dart';
import '../../../../../utils/constants/MyAppSizes.dart';


class MyAppLoginSocialButton extends StatelessWidget {
  const MyAppLoginSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: MyAppColors.grey ) ,borderRadius: BorderRadius.circular(180)


          ),
          child: IconButton(onPressed: (){},icon: Image(
            height: MyAppSizes.iconMd,
            width: MyAppSizes.iconMd,
            image: AssetImage(MyAppImages.facc),
          ),),
        ),

        SizedBox(width: 16,),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: MyAppColors.grey ) ,borderRadius: BorderRadius.circular(180)

          ),
          child: IconButton(onPressed: (){},icon: Image(
            height: MyAppSizes.iconMd,
            width: MyAppSizes.iconMd,
            image: AssetImage(MyAppImages.goo),
          ),),
        ),


      ],);
  }
}



