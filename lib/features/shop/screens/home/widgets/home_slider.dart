import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerceapp/features/shop/controllers/simple_home_controller.dart';
import 'package:ecommerceapp/utils/constants/MyAppColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custum_shape/container/AppCircularContainer.dart';
import '../../../../../common/widgets/images/round_image.dart';
import '../../../../../utils/constants/ImageStrings.dart';
import '../../../../../utils/constants/MyAppSizes.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(


          items: banners.map((url) =>  MyAppRoundedImage(imageUrl: url)).toList(),
          options: CarouselOptions(viewportFraction: 1,
            onPageChanged:(index, _)=>controller.updatePageIdicator(index)
          ),
        ),
        const SizedBox(
          height: MyAppSizes.defaultSpace,
        ),
        Center(
          child: Obx(
              ()=> Row(

                mainAxisSize: MainAxisSize.min,
            
              children: [
                for (int a = 0; a < banners.length; a++)
                   AppCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backGroundColor: controller.carouselSliderIndicator.value == a ? MyAppColors.primary :MyAppColors.grey,
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
