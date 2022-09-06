import 'package:figmadesign/Screens/contactus.dart';
import 'package:figmadesign/Screens/details.dart';
import 'package:figmadesign/Screens/googlemap.dart';
import 'package:figmadesign/Screens/haircut.dart';
import 'package:figmadesign/Screens/jobs.dart';
import 'package:figmadesign/Screens/mooner.dart';
import 'package:figmadesign/Screens/notification.dart';
import 'package:figmadesign/Screens/screen4.dart';
import 'package:figmadesign/components/bottombar.dart';
import 'package:figmadesign/components/drawer.dart';
import 'package:figmadesign/components/tasks.dart';
import 'package:figmadesign/custom_navigation_bar/my_app.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerScreen(),
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          actions: [
            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0.0),
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationDemo()));
              },
              child: Icon(
                size: 30.0,
                Icons.notifications,
                color: Color.fromARGB(255, 238, 121, 108),
              ),
            ),
            Container(
                width: 40.0,
                height: 40.0,
                margin: EdgeInsets.only(
                    top: 5.0, right: 5.0, bottom: 5.0, left: 10.0),
                decoration: BoxDecoration(
                  border: (Border.all(width: 0.1, color: Colors.white)),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(15.0)),
                  color: Colors.white,
                ),
                child: Image.asset("images/Rectangle.png"))
          ],
          title: Container(
              width: 70.0, height: 70.0, child: Image.asset("images/logo.png")),
          centerTitle: true,
          iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
          elevation: 0.0,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 20.0),
                    width: 280.0,
                    height: 50.0,
                    margin: EdgeInsets.only(left: 15.0, top: 20.0),
                    decoration: BoxDecoration(
                      border: (Border.all(width: 0.1, color: Colors.white)),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(15.0)),
                      color: Color.fromARGB(255, 243, 243, 243),
                    ),
                    child: TextField(
                      cursorColor: Color.fromARGB(255, 238, 121, 108),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 238, 121, 108),
                        ),
                        labelText: "Search",
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 238, 121, 108),
                        ),
                      ),
                    )),
                Container(
                  height: 49.0,
                  width: 52.0,
                  margin: EdgeInsets.only(top: 20.0, left: 18.0),
                  padding: EdgeInsets.all(0.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0.0),
                          backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 236, 235, 235),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GoogleMapDemo()));
                      },
                      child: Icon(
                        size: 20.0,
                        Icons.location_on,
                        color: Color.fromARGB(255, 238, 121, 108),
                      )),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Container(
              margin: EdgeInsets.all(5.0),
              child: CarouselSlider(
                  items: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HairCut()),
                        );
                      },
                      child: Container(
                        height: 150,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            image: const DecorationImage(
                                image: AssetImage("images/plumber.jpg"),
                                fit: BoxFit.cover)), // button text
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HairCut()),
                        );
                      },
                      child: Container(
                        height: 150,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            image: const DecorationImage(
                                image: AssetImage("images/cleaner.jpg"),
                                fit: BoxFit.cover)), // button text
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HairCut()),
                        );
                      },
                      child: Container(
                        height: 150,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            image: const DecorationImage(
                                image: AssetImage("images/carpainter.jpg"),
                                fit: BoxFit.cover)), // button text
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HairCut()),
                        );
                      },
                      child: Container(
                        height: 150,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            image: const DecorationImage(
                                image: AssetImage("images/painter.jpg"),
                                fit: BoxFit.cover)), // button text
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HairCut()),
                        );
                      },
                      child: Container(
                        height: 150,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            image: const DecorationImage(
                                image: AssetImage("images/carpainter.jpg"),
                                fit: BoxFit.cover)), // button text
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 200.0,
                  )),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20.0,
                ),
                Text("Categories",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 10.0),
            Container(
              width: 400.0,
              height: 130.0,
              child: Row(
                children: [
                  SizedBox(
                    width: 10.0,
                  ),
                  Tasks(
                    img_name: "seasor.png",
                    title: "Haircut",
                    onpress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HairCut()),
                      );
                    },
                  ),
                  Tasks(
                    img_name: "cleaning.png",
                    title: "Cleaning",
                    onpress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Mooner()),
                      );
                    },
                  ),
                  Tasks(
                    img_name: "pestcontrol.png",
                    title: "Pest Control",
                    onpress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Jobs()),
                      );
                    },
                  ),
                  Tasks(
                    img_name: "mekup.png",
                    title: "Makeup",
                    onpress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Details()),
                      );
                    },
                  ),
                ],
              ),
            ),
            Container(
              width: 400.0,
              height: 150.0,
              child: Row(
                children: [
                  SizedBox(
                    width: 10.0,
                  ),
                  Tasks(
                    img_name: "plumber.png",
                    title: "Plumber",
                    onpress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ContactUs()),
                      );
                    },
                  ),
                  Tasks(
                    img_name: "carpainter.png",
                    title: "Carpenter",
                    onpress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HairCut()),
                      );
                    },
                  ),
                  Tasks(
                    img_name: "painter.png",
                    title: "Painter",
                    onpress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationDemo()),
                      );
                    },
                  ),
                  Tasks(
                    img_name: "seeall.png",
                    title: "See All",
                    onpress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Mooner()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ))),
    );
  }
}
