import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_islamy_app/firebase_options.dart';
import 'package:my_islamy_app/views/about_us_view.dart';
import 'package:my_islamy_app/views/azkar_view.dart';
import 'package:my_islamy_app/views/edit_profile_view.dart';
import 'package:my_islamy_app/views/enable_location.dart';
import 'package:my_islamy_app/views/forgot_password.dart';
import 'package:my_islamy_app/views/home_view.dart';
import 'package:my_islamy_app/views/intro_view.dart';
import 'package:my_islamy_app/views/language_view.dart';
import 'package:my_islamy_app/views/profile_view.dart';
import 'package:my_islamy_app/views/reset_password_view.dart';
import 'package:my_islamy_app/views/rest_password.dart';
import 'package:my_islamy_app/views/sign_in_view.dart';
import 'package:my_islamy_app/views/sing_up_view.dart';
import 'package:my_islamy_app/widgets/bottom_nav_bar.dart';
import 'package:my_islamy_app/widgets/datePicker/date_picker.dart';
import 'package:my_islamy_app/widgets/my_dropdownmenu.dart';

import 'package:device_preview/device_preview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    // DevicePreview(
    //   // enabled: !kReleaseMode,
    //   builder: (context) => MyApp(), // Wrap your app
    // ),
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
      //  AboutUsView()
      // ResetPasswordView()
      // DatePickerPage(),
      // EditProfileView(),
      // this for bottom nav
      // MyHomePage1(),
    );
  }
}
