import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppSectionHeading extends StatelessWidget {
  const MyAppSectionHeading({
    super.key,
    required this.title,
    this.buttonTitle = 'View all',
    this.textColor,
    required this.showActionButtion,
    this.onPressed,
  });

  final String title , buttonTitle;
  final Color? textColor;
  final bool showActionButtion;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Popular Categories ' , style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor), maxLines: 1,overflow: TextOverflow.ellipsis,),

        if (showActionButtion) TextButton(onPressed: onPressed, child:  const Text('button title')) ,

      ],
    );
  }
}
