import 'package:figmadesign/components/bottombar.dart';
import 'package:figmadesign/components/drawer.dart';
import 'package:figmadesign/components/employee_detail.dart';
import 'package:flutter/material.dart';

class Mooner extends StatefulWidget {
  Mooner({Key? key}) : super(key: key);

  @override
  State<Mooner> createState() => _MoonerState();
}

class _MoonerState extends State<Mooner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(8.0),
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
                        child: Row(
                          children: [
                            SizedBox(
                              width: 65.0,
                              height: 55.0,
                              child: Container(
                                margin: EdgeInsets.only(left: 10.0),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        elevation:
                                            MaterialStateProperty.all(0.0),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                          Color.fromARGB(255, 236, 235, 235),
                                        ),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ))),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BottomBar()));
                                    },
                                    child: Text(
                                      "<",
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        color:
                                            Color.fromARGB(255, 238, 121, 108),
                                      ),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          top: 5.0,
                          left: 30.0,
                          child: Container(
                            width: 330.0,
                            height: 240.0,
                            child: Image.asset(
                              "images/mooner.png",
                            ),
                          )),
                    ],
                  )),
              Container(
                width: 400.0,
                height: 100.0,
                child: Stack(
                  children: [
                    Positioned(
                        left: 30.0,
                        child: Text(
                          "We Promise",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                        top: 10.0,
                        left: 200.0,
                        child: Container(
                            width: 30.0,
                            height: 30.0,
                            child: Image.asset("images/Ellipse__41.png"))),
                    Positioned(
                        top: 20.0,
                        left: 180.0,
                        child: Container(
                            width: 40.0,
                            height: 40.0,
                            child: Image.asset("images/Ellipse_41.png"))),
                    Positioned(
                        top: 40.0,
                        left: 30.0,
                        child: Text(
                          "Best in",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                        top: 40.0,
                        left: 80.0,
                        child: Text("Class Professionals",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 238, 121, 108),
                            ))),
                    Positioned(
                        top: 60.0,
                        left: 30.0,
                        child: Text(
                          "Background verified,certified & skilled",
                          style: TextStyle(
                              color: Color.fromARGB(255, 133, 109, 201)),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "Our Mooners",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 238, 121, 108),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              EmployeeDetail(
                Img_name: "notificationimg.png",
              ),
              SizedBox(
                height: 20.0,
              ),
              EmployeeDetail(
                Img_name: "jhon.png",
              ),
              SizedBox(
                height: 20.0,
              ),
              EmployeeDetail(
                Img_name: "jhon2.png",
              ),
              SizedBox(
                height: 20.0,
              ),
              EmployeeDetail(
                Img_name: "Rectangle.png",
              ),
            ],
          ),
        )),
      ),
    );
  }
}
