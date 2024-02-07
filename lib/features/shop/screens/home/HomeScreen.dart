import 'package:flutter/material.dart';
import '../../../../common/widgets/custum_shape/container/MyAppPrimaryHeader.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyAppPrimaryHeaderContainer(

              child:  Container(),
            )
          ],
        ),
      ),
    );
  }
}


