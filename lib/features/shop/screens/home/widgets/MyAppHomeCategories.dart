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
      height: 80,
      child: ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index){

          List<Map<String, dynamic>> categoryData = [
            {"image": MyAppImages.sportIcon, "title": "Sports"},
            {"image": MyAppImages.clothIcon, "title": "Cloths"},
            {"image": MyAppImages.shoeIcon, "title": "Shoes"},
            {"image": MyAppImages.cosmeticsIcon, "title": "Cosmetics"},
            {"image": MyAppImages.animalIcon, "title": "Animals"},
            {"image": MyAppImages.toyIcon, "title": "Toys"},
            // Add more categories as needed
          ];

          // Get the image and title data for the current index
          String image = categoryData[index]["image"];
          String string = categoryData[index]["title"];
          return   MyAppVerticalImageText(image:  image, title: string , ontap: (){}, textColor: Colors.white,);

        },
      ),
    );
  }
}
