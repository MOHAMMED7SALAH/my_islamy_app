import 'package:flutter/material.dart';
import 'package:my_islamy_app/views/azkar_view.dart';
import 'package:my_islamy_app/views/enable_location.dart';
import 'package:my_islamy_app/views/forgot_password.dart';
import 'package:my_islamy_app/views/home_view.dart';
import 'package:my_islamy_app/views/intro_view.dart';
import 'package:my_islamy_app/views/language_view.dart';
import 'package:my_islamy_app/views/rest_password.dart';
import 'package:my_islamy_app/views/sign_in_view.dart';
import 'package:my_islamy_app/views/sing_up_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: AzkarView());
  }
}
