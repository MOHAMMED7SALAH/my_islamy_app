import 'package:flutter/material.dart';
import 'package:my_islamy_app/widgets/intro_button.dart';

class IntroView extends StatelessWidget {
  const IntroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(56.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size.height * .4,
              width: size.height * .4,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/intro/intro.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              'Manage your daily Islamic habits',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Islamy let’s you manage your daily islamic habits with ease',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Avenir',
                color: Color(0xFF6E6E6E),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 100),
            IntroButton(
              urlImage: 'assets/intro/email.png',
              iconHeight: 25.0,
              iconWidth: 25.0,
              textColor: Colors.white,
              width: 299.0,
              height: 60.0,
              text: 'Sign up with Email',
              buttonColor: Color(0xFF37B898),
              myFunction: () {},
            ),
            SizedBox(height: 16),
            IntroButton(
              urlImage: 'assets/intro/google.png',
              iconHeight: 25.0,
              iconWidth: 25.0,
              textColor: Colors.black,
              width: 299.0,
              height: 60.0,
              text: 'Sign up with Google',
              buttonColor: Color(0xFFFFFFFF),
              myFunction: () {},
            ),
          ],
        ),
      ),
    ));
  }
}
