import 'package:figmadesign/Screens/haircut.dart';
import 'package:figmadesign/Screens/jobs.dart';
import 'package:figmadesign/Screens/pay.dart';
import 'package:figmadesign/Screens/profile.dart';
import 'package:figmadesign/Screens/home_screen.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBar> {
  int _currentindex = 2;
  final screens = [
    HairCut(),
    Pay(),
    HomeScreen(),
    Jobs(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(color: Colors.white, child: screens[_currentindex]),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          child: BottomNavigationBar(
              currentIndex: _currentindex,
              onTap: (index) {
                setState(() {
                  _currentindex = index;
                });
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: Color.fromARGB(255, 26, 25, 25),
              selectedFontSize: 0.0,
              unselectedFontSize: 0.0,
              iconSize: 30,
              selectedItemColor: Color.fromARGB(255, 254, 218, 41),
              unselectedItemColor: Color.fromARGB(255, 254, 218, 41),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.compost,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.car_crash),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.chat,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  label: "Home",
                ),
              ]),
        ),
      ),
    );
  }
}
