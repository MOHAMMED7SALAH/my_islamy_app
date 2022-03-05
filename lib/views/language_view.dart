import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_islamy_app/views/sing_up_view.dart';
import 'package:my_islamy_app/widgets/email_textformfield.dart';
import 'package:my_islamy_app/widgets/intro_button.dart';
import 'package:my_islamy_app/widgets/location_textformfield.dart';
import 'package:my_islamy_app/widgets/password_textformfiled.dart';

class LanguageView extends StatefulWidget {
  @override
  _LanguageViewState createState() => _LanguageViewState();
}

class _LanguageViewState extends State<LanguageView> {
  bool isArabic = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Select language',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 26),
                  Container(
                    height: size.height * .4,
                    width: size.height * .4,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/choose_language.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: 36),
                  LnguageToggle(context, 'Arabic'),
                  const SizedBox(width: 15),
                  LnguageToggle(context, 'English'),
                  const SizedBox(height: 20),
                  InkWell(
                      onTap: () {},
                      child: Container(
                        width: 299.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: Color(0xff37B898),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff37B898).withOpacity(.5),
                              spreadRadius: 3,
                              // blurRadius: 2,
                              // offset: Offset(5, 6), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Next',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget LnguageToggle(BuildContext context, String type) {
    var size = MediaQuery.of(context).size;

    return Container(
      height: size.height * .099999,
      width: size.width * .7,
      child: GestureDetector(
        onTap: () =>
            setState(() => isArabic = (type == 'Arabic') ? true : false),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: (isArabic && type == 'Arabic') ||
                    (!isArabic && type == 'English')
                ? Color(0xffFEAA00)
                : Color(0xffFFFFFF),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(type == 'Arabic'
                  ? 'assets/arabic.png'
                  : 'assets/english.png'),
              // SizedBox(width: size.width * .15),
              Text(
                type == 'Arabic' ? 'Arabic' : 'English',
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
