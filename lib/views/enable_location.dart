import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_islamy_app/views/sing_up_view.dart';
import 'package:my_islamy_app/widgets/email_textformfield.dart';
import 'package:my_islamy_app/widgets/intro_button.dart';
import 'package:my_islamy_app/widgets/location_textformfield.dart';
import 'package:my_islamy_app/widgets/password_textformfiled.dart';

class EnableLocationView extends StatefulWidget {
  @override
  _EnableLocationViewState createState() => _EnableLocationViewState();
}

class _EnableLocationViewState extends State<EnableLocationView> {
  final formKey = GlobalKey<FormState>();
  myLogin() async {
    var formdata = formKey.currentState;
    if (formdata!.validate()) {
      formdata.save();
    } else {}
  }

  String location = '';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
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
                    Text(
                      'Enable location',
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
                          image: AssetImage('assets/location.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(height: 36),
                    buildLocation(),
                    const SizedBox(height: 20),
                    InkWell(
                        onTap: myLogin,
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
      ),
    );
  }
}
