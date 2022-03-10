import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_islamy_app/views/language_view.dart';
import 'package:my_islamy_app/views/sign_in_view.dart';
import 'package:my_islamy_app/views/sing_up_view.dart';
import 'package:my_islamy_app/widgets/bottom_nav_bar.dart';
import 'package:my_islamy_app/widgets/drop_down_button.dart';
import 'package:my_islamy_app/widgets/intro_button.dart';
import 'package:my_islamy_app/widgets/my_circel_avatar.dart';
import 'package:my_islamy_app/widgets/my_dropdownmenu.dart';
import 'package:my_islamy_app/widgets/my_switch_button.dart';
import 'package:my_islamy_app/widgets/profile_button.dart';

class ProfileView extends StatefulWidget {
  ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  bool isLogged = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xff37B898),
          title: Text(
            'Profile',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Avenir',
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Color(0xffEFF1F4),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Container(
                child: isLogged
                    ? Column(
                        children: [
                          Center(
                              child: MyCircelAvatar(
                                  image: AssetImage('assets/profile.png'))),
                          SizedBox(height: 20),
                          Text(
                            'Ahmed Ali',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              color: Color(0xff000000),
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Center(
                              child: MyCircelAvatar(
                                  // image: AssetImage('assets/pr.png')
                                  )),
                          SizedBox(height: 20),
                          Text(
                            'Hello, guess',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              color: Color(0xff000000),
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          profileButton(
                            text: 'Login to account',
                            heightButton: size.height * .06,
                            widthButton: size.width * .7,
                            buttonColor: Color(0xff37B898),
                            textColor: Colors.white,
                            myFunction: () {},
                          ),
                          SizedBox(height: 20),
                          profileButton(
                            text: 'Create new account',
                            heightButton: size.height * .06,
                            widthButton: size.width * .7,
                            buttonColor: Colors.white,
                            textColor: Colors.black,
                            myFunction: () {},
                          ),
                        ],
                      )),
            Spacer(
              flex: 1,
            ),
            Container(
              height: size.height * .3,
              width: size.width * .8,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffE5E5E5),
                    blurRadius: 10.0, // soften the shadow
                    spreadRadius: 5.0, //extend the shadow
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xff37B898).withOpacity(.2),
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(Iconsax.notification,
                              color: Color(0xff37B898)),
                        ),
                        Spacer(flex: 1),
                        Text(
                          'Mute Notification',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            color: Color(0xff000000),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(flex: 20),
                        MySwitchButton(),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xff37B898).withOpacity(.2),
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(Iconsax.global, color: Color(0xff37B898)),
                        ),
                        Spacer(flex: 1),
                        Text(
                          'Language',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            color: Color(0xff000000),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(flex: 20),
                        DropDownButton(),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xff37B898).withOpacity(.2),
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(Iconsax.info_circle,
                              color: Color(0xff37B898)),
                        ),
                        Spacer(flex: 1),
                        Text(
                          'More About Us',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            color: Color(0xff000000),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(flex: 20),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Iconsax.arrow_circle_right,
                              color: Color(0xff37B898)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Spacer(flex: 6),
          ],
        ),
      ),
    );
  }
}
