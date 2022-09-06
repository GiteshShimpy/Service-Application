import 'package:figmadesign/Screens/screen2.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 238, 121, 108),
            child: Icon(Icons.arrow_forward),
            onPressed: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Screen2()),
              );
            })),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
            child: Column(
              children: [
                SizedBox(height: 50.0),
                Container(
                  margin: EdgeInsets.only(
                    top: 50.0,
                  ),
                  height: 350.0,
                  width: 400.0,
                  child: Image.asset("images/Screen_1.png"),
                ),
                SizedBox(height: 100.0),
                Container(
                  height: 200.0,
                  width: 350.0,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 180.0,
                        left: 0.0,
                        child: Container(
                          height: 18.0,
                          width: 15.0,
                          child: Image.asset(
                            "images/Rectangle 10.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 130.0,
                        left: 150.0,
                        child: Container(
                          child: Image.asset(
                            "images/Ellipse 41.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 140.0,
                        left: 12.0,
                        child: Container(
                            child: Text(
                          "Empowering everyone\nto be self Employed",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        )),
                      ),
                      Positioned(
                        bottom: 130.0,
                        left: 280.0,
                        child: Container(
                          child: Image.asset(
                            "images/Rectangle140.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 80.0,
                        left: 30.0,
                        child: Container(
                          child: Image.asset(
                            "images/Polygon 8.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
