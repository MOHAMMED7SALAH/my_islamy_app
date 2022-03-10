import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySwitchButton extends StatefulWidget {
  MySwitchButton({Key? key}) : super(key: key);

  @override
  State<MySwitchButton> createState() => _MySwitchButtonState();
}

class _MySwitchButtonState extends State<MySwitchButton> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
        scale: .7,
        child: CupertinoSwitch(
          value: isSwitched,
          onChanged: (value) {
            setState(() {
              isSwitched = value;
            });
          },
        ));
  }
}
