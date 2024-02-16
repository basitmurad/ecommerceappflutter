import 'package:flutter/cupertino.dart';
import '../../../../utils/constants/MyAppColor.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'MyAppCircularContainer.dart';

class MyAppPrimaryHeaderContainer extends StatelessWidget {
  const MyAppPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidgets(
      child: Container(
        color: MyAppColors.primary,
        padding: EdgeInsets.zero,
        child: SizedBox(
          height: 350,
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: MyAppCircularContainer(
                    backGroundColor:
                    MyAppColors.textWhite.withOpacity(0.1),
                  )),
              Positioned(
                  top: 100,
                  right: -300,
                  child: MyAppCircularContainer(
                    backGroundColor:
                    MyAppColors.textWhite.withOpacity(0.1),
                  )),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
