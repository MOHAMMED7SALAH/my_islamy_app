import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_islamy_app/views/sing_up_view.dart';
import 'package:my_islamy_app/widgets/email_textformfield.dart';
import 'package:my_islamy_app/widgets/intro_button.dart';
import 'package:my_islamy_app/widgets/password_textformfiled.dart';

class ForgotPasswordView extends StatefulWidget {
  @override
  _ForgotPasswordViewState createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
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
                        'Enter your email',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'We will send you a verification link to reset your password',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          color: Color(0xFF6E6E6E),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 36),
                      buildEmail(),
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
                      RichText(
                        text: TextSpan(
                            text: 'Didn’t get a link ?',
                            style: TextStyle(
                              color: Color(0xFF89909A).withOpacity(.6),
                              fontSize: 16,
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                  text: ' Resend again ',
                                  style: TextStyle(
                                    color: Color(0xFF37B898),
                                    fontSize: 16,
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {})
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
