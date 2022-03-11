import 'package:flutter/material.dart';

class MyCategory extends StatelessWidget {
  dynamic myIconSize;

  String urlImage;

  String textCategory;

  MyCategory({
    Key? key,
    required this.myIconSize,
    required this.urlImage,
    required this.textCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
        onTap: () {},
        child: Container(
          height: size.height * .1,
          width: size.height * .1,
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Color(0xffE5E5E5),
                blurRadius: 36.0, // soften the shadow
                // spreadRadius: 5.0, //extend the shadow
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                urlImage,
                height: myIconSize,
                width: myIconSize,
              ),
              SizedBox(height: size.height * .01),
              Text(
                textCategory,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Avenir',
                  fontSize: 14,
                  // fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ));
  }
}
