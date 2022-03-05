import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_islamy_app/views/sing_up_view.dart';
import 'package:my_islamy_app/widgets/email_textformfield.dart';
import 'package:my_islamy_app/widgets/intro_button.dart';
import 'package:my_islamy_app/widgets/password_textformfiled.dart';

class SignInView extends StatefulWidget {
  const SignInView();

  @override
  _SignInViewState createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final formKey = GlobalKey<FormState>();
  myLogin() async {
    var formdata = formKey.currentState;
    if (formdata!.validate()) {
      formdata.save();
    } else {}
  }

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
                      height: 36,
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
                      'Login to your account',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 36),
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
                    const SizedBox(height: 80),
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
                                text: ' Sign up',
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
                                          builder: (context) => SignUpView()),
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
