import 'package:flutter/material.dart';

class profileButton extends StatelessWidget {
  var textColor;
  var myFunction;
  var buttonColor;

  var heightButton;

  var widthButton;

  String text;

  profileButton({
    Key? key,
    required this.textColor,
    required this.myFunction,
    required this.buttonColor,
    required this.heightButton,
    required this.widthButton,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: myFunction,
        child: Container(
            height: heightButton,
            width: widthButton,
            decoration: BoxDecoration(
              color: buttonColor,
              // Color(0xff37B898),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: buttonColor.withOpacity(.5),
                  spreadRadius: 3,
                  // blurRadius: 2,
                  // offset: Offset(5, 6), // changes position of shadow
                ),
              ],
            ),
            child: Center(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Avenir',
                  color: textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )));
  }
}
