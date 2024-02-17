import 'package:flutter/cupertino.dart';

import '../../../utils/constants/MyAppSizes.dart';
import '../product/product_carts/product_card_vertical.dart';

class MyAppGridLayout extends StatelessWidget {
  const MyAppGridLayout({
    super.key, required this.itemCount, required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent = 288;
  final Widget? Function(BuildContext ,int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate:
       SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: MyAppSizes.gridViewSpacing,
          crossAxisSpacing: MyAppSizes.gridViewSpacing,
          mainAxisExtent: mainAxisExtent),
      itemBuilder: (_, index) => const AppProductVertical(),
    );
  }
}
