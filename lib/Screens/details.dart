import 'package:figmadesign/Screens/home_screen.dart';
import 'package:figmadesign/components/bottombar.dart';
import 'package:figmadesign/components/cart.dart';
import 'package:figmadesign/components/task2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 238, 121, 108),
            child: Icon(Icons.arrow_forward),
            onPressed: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            })),
        drawer: Drawer(),
        appBar: AppBar(
          actions: [
            Icon(
              size: 30.0,
              Icons.notifications,
              color: Color.fromARGB(255, 238, 121, 108),
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
                            child: Container(
                              width: 45.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                border: (Border.all(
                                    width: 0.1, color: Colors.white)),
                                borderRadius: const BorderRadius.all(
                                    const Radius.circular(45.0)),
                                color: Colors.white,
                              ),
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color.fromARGB(
                                                  255, 255, 255, 255))),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BottomBar()),
                                    );
                                  },
                                  child: Text(
                                    "<",
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      color: Color.fromARGB(255, 238, 121, 108),
                                    ),
                                  )),
                            ))
                      ],
                    )),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: Row(
                          children: [
                            Text(
                                style: TextStyle(
                                  color: Color.fromARGB(255, 238, 121, 108),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                "Mooner "),
                            Text(
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                "require some"),
                          ],
                        )),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20.0, top: 5.0),
                      child: Text(
                        "details from you",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20.0, top: 10.0),
                      child: Text(
                        "Select!",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 133, 109, 201),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 260.0,
                  width: 360.0,
                  margin: EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      Text(
                        "Lorem ipsum is simply dummy text of the \nprinting and typesetting?",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 45.0,
                      ),
                      Text(
                        "Lorem ipsum is simply dummy text of the \nprinting and typesetting?",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 45.0,
                      ),
                      Text(
                        "Lorem ipsum is simply dummy text of the \nprinting and typesetting?",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Text(
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                          "Lorem ipsum is simply dummy?"),
                    ],
                  ),
                ),
                Container(
                  width: 360.0,
                  height: 100.0,
                  margin: EdgeInsets.only(top: 10.0),
                  decoration: BoxDecoration(
                    border: (Border.all(width: 0.1, color: Colors.white)),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(15.0)),
                    color: Color.fromARGB(255, 243, 243, 243),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "       Describe your answer!"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0, left: 10.0),
                  child: Row(
                    children: [
                      Text(
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                          "uplode image/video  "),
                      Text(
                        style: TextStyle(
                          color: Color.fromARGB(255, 238, 121, 108),
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                        ),
                        "Max size 2mb",
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 360.0,
                  height: 100.0,
                  margin: EdgeInsets.only(top: 10.0),
                  decoration: BoxDecoration(
                    border: (Border.all(width: 0.1, color: Colors.white)),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(15.0)),
                    color: Color.fromARGB(255, 243, 243, 243),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 5.0,
                    ),
                    Tasks2(img_name: "Rectangle160.png"),
                    Tasks2(img_name: "Rectangle161.png"),
                    Tasks2(img_name: "Rectangle162.png"),
                  ],
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
