import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_vertical_text/MyAppVerticalImageText.dart';
import '../../../../../utils/constants/ImageStrings.dart';

class MyAppHomeCategories extends StatelessWidget {
  const MyAppHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index){

          return   MyAppVerticalImageText(image:  MyAppImages.clothIcon, title: 'cloths' , ontap: (){}, textColor: Colors.white,);

        },
      ),
    );
  }
}
