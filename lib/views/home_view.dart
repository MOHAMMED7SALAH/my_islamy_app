import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_islamy_app/widgets/build_category.dart';
import 'package:my_islamy_app/widgets/build_icon_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: Stack(children: [
          Image.asset(
            'assets/home.png',
            height: size.height * .36,
            width: size.width,
            fit: BoxFit.fill,
          ),
          Container(
            margin: EdgeInsets.only(top: 77),
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyIconButton(
                        myIcon: Iconsax.translate4,
                        myIconSize: 50,
                        myColor: Colors.white,
                      ),
                      Column(
                        children: [
                          Text(
                            'Salam Alaikum',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              color: Color(0xffFFFFFF),
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'Sat, 18th Rajab',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              color: Color(0xffFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      MyIconButton(
                        myIcon: Iconsax.location,
                        myIconSize: 50,
                        myColor: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(height: 36),
                  Container(
                    height: size.height * .2,
                    width: size.width * .8,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(26),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffE5E5E5),
                          blurRadius: 10.0, // soften the shadow
                          spreadRadius: 5.0, //extend the shadow
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Asr',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            color: Color(0xff000000),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '3:49 PM',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            color: Color(0xff37B898),
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Iconsax.location),
                            Text(
                              'Dubai, United Arab Emirates',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                color: Color(0xff89909A),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 26),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyCategory(
                        textCategory: 'Tasbeeh',
                        myIconSize: 50.0,
                        urlImage: 'assets/tasbeeh.png',
                      ),
                      MyCategory(
                        textCategory: 'Azkar',
                        myIconSize: 50.0,
                        urlImage: 'assets/azkar.png',
                      ),
                      MyCategory(
                        textCategory: 'Calendar',
                        myIconSize: 50.0,
                        urlImage: 'assets/calender.png',
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
