import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyBottomNavBar extends StatefulWidget {
  MyBottomNavBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  var currentIndex  = 0;
  final screens = [
    // WE CAN ADD REAL SCREENS LIKE MyHomeScreen()...
    Center(
        child: Text(
      'Home',
      style: TextStyle(fontSize: 16),
    )),
    Center(
        child: Text(
      'Quran',
      style: TextStyle(fontSize: 16),
    )),
    Center(
        child: Text(
      'Prayers',
      style: TextStyle(fontSize: 16),
    )),
    Center(
        child: Text(
      'Profile',
      style: TextStyle(fontSize: 16),
    )),
  ];
  @override

  Widget build(BuildContext context) {
     return Scaffold(
        // body: screens[index],
        body: 
        //THIS DOES'T METHODE DOESN'T KEEP ALL WIDGET ALIVE IN WIDGET TREE
        // IT KEEP JUST ONE WIDGET = CURRENT WIDGET
        // screens[currentIndex],
        IndexedStack(
          //TO KEEP ALL CHILDREN IN WIDGET TREE ALIVE & STATE 
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar:

            // NavigationBarTheme(

            //   data: NavigationBarThemeData(
            //       // indicatorColor:
            //       //  iconTheme: IconThemeData(),
            //       // iconTheme: ,
            //       labelTextStyle: MaterialStateProperty.all(TextStyle(
            //     fontSize: 12,
            //     fontFamily: 'Avenir',
            //     fontWeight: FontWeight.normal,
            //     color: Color(0xff37B898),

            //   ))),
            //   child: NavigationBar(
            //       // height: ,
            //       // backgroundColor: ,
            //       labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,

            //       animationDuration: Duration(seconds: 1),
            //       selectedIndex: index,
            //       onDestinationSelected: (index) => setState(() {
            //             this.index = index;
            //           }),
            //       destinations: [
            //         NavigationDestination(
            //           icon: Icon(Iconsax.home_11),
            //           selectedIcon: Icon(
            //             Iconsax.home,
            //             color: Color(0xff37B898),
            //           ),
            //           label: 'Home',
            //         ),
            //         NavigationDestination(
            //           icon: Icon(Iconsax.book_square),
            //           selectedIcon: Icon(
            //             Iconsax.book_square,
            //             color: Color(0xff37B898),
            //           ),
            //           label: 'Quran',
            //         ),
            //         NavigationDestination(
            //           icon: Icon(Iconsax.clock),
            //           selectedIcon: Icon(
            //             Iconsax.clock,
            //             color: Color(0xff37B898),
            //           ),
            //           label: 'Prayers',
            //         ),
            //         NavigationDestination(
            //           icon: Icon(Iconsax.profile),
            //           selectedIcon: Icon(
            //             Iconsax.profile,
            //             color: Color(0xff37B898),
            //           ),
            //           label: 'Profile',
            //         ),
            //       ]),
            // ),
            
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Color(0xff37B898),
              // selectedFontSize: 12,
              selectedLabelStyle: TextStyle(
                fontSize: 12,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.normal,
                color: Color(0xff37B898),
              ),
              unselectedFontSize: 12,
              iconSize: 24,
              unselectedItemColor: Colors.grey,
              // iconSize: ,
          currentIndex: currentIndex,

          onTap: (index) => setState(() {
            currentIndex = index;
          }),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Iconsax.home_2),
              activeIcon: Icon(Iconsax.home1),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.book_square),
              label: 'Quran',
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.clock),
              label: 'Prayers',
            ),
            
            BottomNavigationBarItem(
              icon: Icon(Iconsax.user),
              label: 'Profile',
            ),
            
          ],
        ));
  }
  }
