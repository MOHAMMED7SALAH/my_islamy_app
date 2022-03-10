import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_islamy_app/views/azkar_view.dart';
import 'package:my_islamy_app/views/profile_view.dart';

class MyHomePage1 extends StatefulWidget {
  const MyHomePage1({
    Key? key,
  }) : super(key: key);
  @override
  State<MyHomePage1> createState() => _MyHomePage1State();
}

class _MyHomePage1State extends State<MyHomePage1> {
  var index = 0;

  final screens = [
    ProfileView(),
    ProfileView(),
    AzkarView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: IndexedStack(
        //TO KEEP ALL CHILDREN IN WIDGET TREE ALIVE & STATE
        index: index,
        children: screens,
      ),
      bottomNavigationBar: NavigationBarTheme(
        
        data: NavigationBarThemeData(
          height: size.height * .07,
          // backgroundColor: Colors.black,
          iconTheme: MaterialStateProperty.all(IconThemeData(
            color: Color(0xffBABABA),
          )),
            
          // labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          // animationDuration: const Duration(seconds: 3),
            
          indicatorColor: Colors.transparent,
             
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(
                fontSize: 12,
                fontFamily: 'Avenir',
              fontWeight: FontWeight.bold,
                color: Color(0xff37B898),
              ),
          ),
        ),
        child: NavigationBar(
          onDestinationSelected: (index) => setState(
            () => this.index = index,
          ),
          selectedIndex: index,
          
          destinations: [
            NavigationDestination(
              icon: Icon(Iconsax.home_2),
              
              selectedIcon: Icon(
                Iconsax.home_2,
                color: Color(0xff37B898),
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.book_square),
              selectedIcon: Icon(
                Iconsax.book_square,
                color: Color(0xff37B898),
              ),
              label: 'Quran',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.clock),
              selectedIcon: Icon(
                Iconsax.clock,
                color: Color(0xff37B898),
              ),
              label: 'Prayers',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user),
              selectedIcon: Icon(
                Iconsax.user,
                color: Color(0xff37B898),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
