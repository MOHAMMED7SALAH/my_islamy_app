import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_islamy_app/views/sing_up_view.dart';
import 'package:my_islamy_app/widgets/email_textformfield.dart';
import 'package:my_islamy_app/widgets/intro_button.dart';
import 'package:my_islamy_app/widgets/password_textformfiled.dart';

class RestPasswordView extends StatefulWidget {
  @override
  _RestPasswordViewState createState() => _RestPasswordViewState();
}

class _RestPasswordViewState extends State<RestPasswordView> {
  final formKey = GlobalKey<FormState>();
  myLogin() async {
    var formdata = formKey.currentState;
    if (formdata!.validate()) {
      formdata.save();
    } else {}
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  //autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 36,
                      ),
                      Text(
                        'Reset password',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Please enter a new password',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          color: Color(0xFF6E6E6E),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 36),
                      buildPassword(),
                      SizedBox(height: 16),
                      buildPassword(),
                      const SizedBox(height: 20),
                      IntroButton(
                          urlImage: 'assets/intro/email.png',
                          iconHeight: 25.0,
                          iconWidth: 25.0,
                          textColor: Colors.white,
                          width: 299.0,
                          height: 60.0,
                          text: 'Get my verification link',
                          buttonColor: Color(0xFF37B898),
                          myFunction: () => myLogin()),
                      SizedBox(height: 60),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
