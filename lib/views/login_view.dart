import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_islamy_app/widgets/intro_button.dart';

class LoginView extends StatefulWidget {
  final String title;

  const LoginView({
    required this.title,
  });

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                    SizedBox(height: 36,),
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
                      myFunction: (){}
                        
                    ),
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
                                recognizer: TapGestureRecognizer()..onTap = () {})
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  Widget buildUsername() => TextFormField(
        decoration: InputDecoration(
          labelText: 'Username',
          border: OutlineInputBorder(),
          // errorBorder:
          //     OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
          // focusedErrorBorder:
          //     OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
          // errorStyle: TextStyle(color: Colors.purple),
        ),
        validator: (value) {
          if (value!.length < 4) {
            return 'Enter at least 4 characters';
          } else {
            return null;
          }
        },
        maxLength: 30,
        
        onSaved: (value) => setState(() => username = value!),
      );

  Widget buildEmail() => TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.email_rounded, color: Color(0xff37B898)),
          labelText: 'Email',
          
          // suffixIcon: IconButton(onPressed: (value) => setState((value) => email),

          // icon: Icon(Icons.clear)),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff37B898), width: 1.0),
            borderRadius: BorderRadius.circular(16.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff37B898), width: 1.0),
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        validator: (value) {
          final pattern = r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)';
          final regExp = RegExp(pattern);

          if (value!.isEmpty) {
            return 'Enter an email';
          } else if (!regExp.hasMatch(value)) {
            return 'Enter a valid email Please';
          } else {
            return null;
          }
        },
        
        keyboardType: TextInputType.emailAddress,
        onSaved: (value) => setState(() => email = value!),
      );

  Widget buildPassword() => TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            color: Color(0xff37B898),
          ),
          labelText: 'Password',
          suffixIcon: Icon(
            Icons.visibility_outlined,
            color: Color(0xff37B898),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff37B898), width: 1.0),
            borderRadius: BorderRadius.circular(16.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff37B898), width: 1.0),
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        validator: (value) {
          if (value!.length < 7) {
            return 'Password must be at least 7 characters long';
          } else {
            return null;
          }
        },
        onSaved: (value) => setState(() => password = value!),
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
      );

  Widget buildSubmit() => Builder(
        builder: (context) => ButtonWidget(
          text: 'Submit',
          onClicked: () {
            final isValid = formKey.currentState!.validate();
            // FocusScope.of(context).unfocus();

            if (isValid) {
              formKey.currentState!.save();

              final message =
                  'Username: $username\nPassword: $password\nEmail: $email';
              final snackBar = SnackBar(
                content: Text(
                  message,
                  style: TextStyle(fontSize: 20),
                ),
                backgroundColor: Colors.green,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          },
        ),
      );
}

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    required this.text,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) => RaisedButton(
        child: Text(
          text,
          style: TextStyle(fontSize: 24),
        ),
        shape: StadiumBorder(),
        color: Theme.of(context).primaryColor,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        textColor: Colors.white,
        onPressed: onClicked,
      );
}
