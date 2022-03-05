import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_islamy_app/views/sign_in_view.dart';
import 'package:my_islamy_app/widgets/email_textformfield.dart';
import 'package:my_islamy_app/widgets/intro_button.dart';
import 'package:my_islamy_app/widgets/password_textformfiled.dart';
import 'package:my_islamy_app/widgets/username_textformfield.dart';

class SignUpView extends StatefulWidget {
  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final formKey = GlobalKey<FormState>();
  myLogin() async {
    var formdata = formKey.currentState;
    if (formdata!.validate()) {
      formdata.save();
    } else {}
  }

  String username = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                //autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/login.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Create new account',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 26),
                    buildUsername(),
                    const SizedBox(height: 20),
                    buildEmail(),
                    const SizedBox(height: 20),
                    buildPassword(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forget password ?',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    IntroButton(
                        urlImage: 'assets/intro/email.png',
                        iconHeight: 25.0,
                        iconWidth: 25.0,
                        textColor: Colors.white,
                        width: 299.0,
                        height: 60.0,
                        text: 'Sign up with Email',
                        buttonColor: Color(0xFF37B898),
                        myFunction: () => myLogin()),
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
                        myFunction: () {}),
                    SizedBox(height: 60),
                    RichText(
                      text: TextSpan(
                          text: 'Don’t have account ?',
                          style: TextStyle(
                            color: Color(0xFF89909A).withOpacity(.6),
                            fontSize: 16,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                                text: ' Sign in',
                                style: TextStyle(
                                  color: Color(0xFF37B898),
                                  fontSize: 16,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.bold,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SignInView()),
                                    );
                                  })
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
