import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_islamy_app/widgets/build_category.dart';

class AzkarView extends StatelessWidget {
  const AzkarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color(0xff37B898),
            title: Text(
              'Azkar',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: GridView(
            padding: EdgeInsets.all(30),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            children: [
              MyCategory(
                textCategory: 'Tasbeeh',
                myIconSize: 50.0,
                urlImage: 'assets/tasbeeh.png',
              ),
              MyCategory(
                textCategory: 'After prayer',
                myIconSize: 50.0,
                urlImage: 'assets/after_pray.png',
              ),
              MyCategory(
                textCategory: 'Before sleep',
                myIconSize: 50.0,
                urlImage: 'assets/before_sleep.png',
              ),
              MyCategory(
                textCategory: 'Morning',
                myIconSize: 50.0,
                urlImage: 'assets/morning.png',
              ),
              MyCategory(
                textCategory: 'Daily',
                myIconSize: 50.0,
                urlImage: 'assets/daily.png',
              ),
              MyCategory(
                textCategory: 'Duaa',
                myIconSize: 50.0,
                urlImage: 'assets/azkar.png',
              ),
              MyCategory(
                textCategory: 'Evening',
                myIconSize: 50.0,
                urlImage: 'assets/evening.png',
              ),
              MyCategory(
                textCategory: 'Tasbeeh',
                myIconSize: 50.0,
                urlImage: 'assets/tasbeeh.png',
              ),
            ],
          ),
        ));
  }
}
