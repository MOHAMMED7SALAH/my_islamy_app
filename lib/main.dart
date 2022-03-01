import 'package:flutter/material.dart';
import 'package:my_islamy_app/views/intro_view.dart';
import 'package:my_islamy_app/views/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: LoginView(
        title: 'jjj',
      ),
    );
  }
}

