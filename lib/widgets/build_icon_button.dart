import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyIconButton extends StatelessWidget {
  IconData myIcon;

  Color? myColor;

  double? myIconSize;

  MyIconButton({
    Key? key,
    required this.myIcon,
    this.myColor,
    this.myIconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Container(
          height: myIconSize,
          width: myIconSize,
          decoration: BoxDecoration(
            color: Color(0xff6CD3B9),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(
            myIcon,
            color: myColor,
          ),
        ));
  }
}
