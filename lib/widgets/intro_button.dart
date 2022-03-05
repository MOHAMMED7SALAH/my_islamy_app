import 'package:flutter/material.dart';

class IntroButton extends StatelessWidget {
  var height, width, textColor;
  Color buttonColor;

  String text;

  var myFunction;

  var iconHeight, iconWidth;

  String urlImage;

  IntroButton(
      {Key? key,
      required this.textColor,
      required this.width,
      required this.urlImage,
      required this.height,
      required this.iconHeight,
      required this.iconWidth,
      required this.text,
      required this.myFunction,
      required this.buttonColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return InkWell(
        onTap: myFunction,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Color(buttonColor.value).withOpacity(.5),
                spreadRadius: 3,
                // blurRadius: 2,
                // offset: Offset(5, 6), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children: [
              // SizedBox(width: 10,),
              Container(
                height: iconHeight,
                width: iconWidth,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(urlImage),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 16,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
