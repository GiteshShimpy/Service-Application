import 'package:figmadesign/Screens/screen4.dart';
import 'package:figmadesign/Screens/screen2.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

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
                MaterialPageRoute(builder: (context) => Screen4()),
              );
            })),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              children: [
                Container(
                  height: 360.0,
                  child: Stack(
                    children: [
                      Container(
                        width: 385.0,
                        child: Image.asset(
                          "images/Screenshot.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          top: 30.0,
                          left: 5.0,
                          child: SizedBox(
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(0.0),
                                      shadowColor: MaterialStateProperty.all(
                                          Color.fromARGB(255, 254, 218, 41)),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color.fromARGB(
                                                  255, 254, 218, 41))),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Screen2()),
                                    );
                                  },
                                  child: Icon(
                                    size: 30.0,
                                    Icons.arrow_back,
                                    color: Color.fromARGB(255, 238, 121, 108),
                                  )))),
                      Positioned(
                        top: 30.0,
                        left: 160.0,
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          child: Image.asset(
                            "images/image36.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50.0),
                Text(
                  "Sign Up Successful",
                  style: TextStyle(
                      color: Color.fromARGB(255, 238, 121, 108),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    SizedBox(width: 120.0),
                    Text(
                      "Congratulation!",
                      style: TextStyle(
                          color: Color.fromARGB(255, 133, 109, 201),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Positioned(
                        top: 35.0,
                        left: 150.0,
                        child: Container(
                            margin: EdgeInsets.only(top: 30.0, left: 20.0),
                            width: 40.0,
                            height: 40.0,
                            child: Image.asset(
                              "images/Rectangle 18.png",
                              fit: BoxFit.cover,
                            ))),
                  ],
                ),
                SizedBox(
                  height: 55.0,
                ),
                Container(
                  width: 390.0,
                  height: 260.0,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10.0,
                        child: Container(
                          width: 20.0,
                          height: 20.0,
                          child: Image.asset(
                            "images/Rectangle 10.png",
                          ),
                        ),
                      ),
                      Positioned(
                          top: 20.0,
                          left: 60.0,
                          child: Container(
                            child: Text(
                              "Happy Mooning!",
                              style: TextStyle(
                                  fontSize: 35.0, fontWeight: FontWeight.bold),
                            ),
                          )),
                      Positioned(
                        top: 150.0,
                        left: 20.0,
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          child: Image.asset(
                            "images/Polygon 1.png",
                          ),
                        ),
                      ),
                      Positioned(
                        left: 135.0,
                        top: 65,
                        child: Container(
                          width: 260.0,
                          height: 250.0,
                          child: Image.asset(
                            "images/Vector 5.png",
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
