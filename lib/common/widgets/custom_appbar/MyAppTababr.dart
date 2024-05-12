import 'package:ecommerceapp/utils/constants/MyAppColor.dart';
import 'package:ecommerceapp/utils/device/MyDevicesUtils.dart';
import 'package:ecommerceapp/utils/helpers/MyAppHelper.dart';
import 'package:flutter/material.dart';

class MyAppTabrBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppTabrBar({Key? key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);
    return Material(
      color:  dark? MyAppColors.black : MyAppColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: MyAppColors.primary,
        labelColor: dark? MyAppColors.white : MyAppColors.primary,
        unselectedLabelColor: MyAppColors.darkGrey,
      ),
    );  }

  @override
  Size get preferredSize => Size.fromHeight(MyDevicesUtils.getAppBarHeight());
}
