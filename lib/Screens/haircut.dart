import 'package:figmadesign/Screens/details.dart';
import 'package:figmadesign/Screens/home_screen.dart';
import 'package:figmadesign/Screens/notification.dart';
import 'package:figmadesign/components/bottombar.dart';
import 'package:figmadesign/components/cart.dart';
import 'package:figmadesign/components/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HairCut extends StatefulWidget {
  const HairCut({Key? key}) : super(key: key);

  @override
  State<HairCut> createState() => _HairCutState();
}

class _HairCutState extends State<HairCut> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: DrawerScreen(),
        appBar: AppBar(
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
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  border: (Border.all(width: 0.1, color: Colors.white)),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(15.0)),
                  color: Colors.white,
                ),
                child: Image.asset("images/Rectangle.png"))
          ],
          title: Image.asset("images/image36.png"),
          centerTitle: true,
          iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
          elevation: 0.0,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
            padding: EdgeInsets.all(2.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: 250.0,
                    width: 400.0,
                    child: Stack(
                      children: [
                        Positioned(
                            child: Image.asset(
                          "images/haircut.png",
                          fit: BoxFit.cover,
                        )),
                        Positioned(
                          left: 10.0,
                          child: SizedBox(
                            height: 50.0,
                            width: 50.0,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0.0),
                                    backgroundColor: MaterialStateProperty.all(
                                      Color.fromARGB(255, 236, 235, 235),
                                    ),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ))),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BottomBar()));
                                },
                                child: Text(
                                  "<",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    color: Color.fromARGB(255, 238, 121, 108),
                                  ),
                                )),
                          ),
                        )
                      ],
                    )),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text(
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                            "Get Your haircut by")),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10.0, top: 5.0),
                      child: Text(
                        "Expert Hand",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 238, 121, 108),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10.0, top: 20.0),
                      child: Text(
                        "Select a Service!",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 133, 109, 201),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Cart(
                        img_name: "Vector.png",
                        title: "Halal",
                        subtitle: "Starting from \$999"),
                    SizedBox(width: 10.0),
                    Cart(
                        img_name: "Vector1.png",
                        title: "Halal",
                        subtitle: "Starting from \$999"),
                  ],
                ),
                Row(
                  children: [
                    Cart(
                        img_name: "Vector2.png",
                        title: "Halal",
                        subtitle: "Starting from \$999"),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0.0),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Details()),
                          );
                        },
                        child: Text(
                          "Explore more Categories",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color.fromARGB(255, 238, 121, 108),
                          ),
                        )),
                  ],
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
