import 'package:figmadesign/Screens/screen3.dart';
import 'package:figmadesign/components/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

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
                  MaterialPageRoute(builder: (context) => BottomBar()),
                );
              })),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 500.0,
                      width: 370.0,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 50.0,
                            left: 20.0,
                            child: Container(
                              height: 400.0,
                              width: 385.0,
                              child: Image.asset(
                                "images/Screenshot_4.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                              top: 30.0,
                              left: 5.0,
                              child: SizedBox(
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          elevation:
                                              MaterialStateProperty.all(0.0),
                                          shadowColor:
                                              MaterialStateProperty.all(
                                                  Color.fromARGB(
                                                      255, 255, 255, 255)),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Color.fromARGB(
                                                      255, 255, 255, 255))),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Screen3()),
                                        );
                                      },
                                      child: Icon(
                                        size: 30.0,
                                        Icons.arrow_back,
                                        color:
                                            Color.fromARGB(255, 238, 121, 108),
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
                          Positioned(
                            top: 90.0,
                            left: 130.0,
                            child: Container(
                                width: 120.0,
                                height: 50.0,
                                child: Text(
                                  "Smart service",
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Text(
                        "Verify Your Phone Number",
                        style: TextStyle(
                            color: Color.fromARGB(255, 133, 109, 201),
                            fontSize: 25.0),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      child: Text(
                        "Please enter 4 digit code send to\n              +1547 482****",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          margin: EdgeInsets.only(left: 60.0),
                          decoration: BoxDecoration(
                              border:
                                  (Border.all(width: 0.1, color: Colors.white)),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(5.0)),
                              color: Color.fromARGB(255, 228, 227, 227),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 209, 200, 200),
                                    spreadRadius: 3.0,
                                    blurRadius: 5.0,
                                    blurStyle: BlurStyle.normal),
                              ]),
                          child: TextField(
                            maxLength: 1,
                            decoration: InputDecoration(
                              counterText: '',
                              border: InputBorder.none,
                            ),
                            cursorColor: Color.fromARGB(255, 238, 121, 108),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: 50.0,
                          height: 50.0,
                          margin: EdgeInsets.only(left: 15.0),
                          decoration: BoxDecoration(
                              border:
                                  (Border.all(width: 0.1, color: Colors.white)),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(5.0)),
                              color: Color.fromARGB(255, 228, 227, 227),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 209, 200, 200),
                                    spreadRadius: 3.0,
                                    blurRadius: 5.0,
                                    blurStyle: BlurStyle.normal),
                              ]),
                          child: TextField(
                            maxLength: 1,
                            decoration: InputDecoration(
                              counterText: '',
                              border: InputBorder.none,
                            ),
                            cursorColor: Color.fromARGB(255, 238, 121, 108),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: 50.0,
                          height: 50.0,
                          margin: EdgeInsets.only(left: 15.0),
                          decoration: BoxDecoration(
                              border:
                                  (Border.all(width: 0.1, color: Colors.white)),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(5.0)),
                              color: Color.fromARGB(255, 228, 227, 227),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 209, 200, 200),
                                    spreadRadius: 3.0,
                                    blurRadius: 5.0,
                                    blurStyle: BlurStyle.normal),
                              ]),
                          child: TextField(
                            maxLength: 1,
                            decoration: InputDecoration(
                              counterText: '',
                              border: InputBorder.none,
                            ),
                            cursorColor: Color.fromARGB(255, 238, 121, 108),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: 50.0,
                          height: 50.0,
                          margin: EdgeInsets.only(left: 15.0),
                          decoration: BoxDecoration(
                              border:
                                  (Border.all(width: 0.1, color: Colors.white)),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(5.0)),
                              color: Color.fromARGB(255, 228, 227, 227),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 209, 200, 200),
                                    spreadRadius: 3.0,
                                    blurRadius: 5.0,
                                    blurStyle: BlurStyle.normal),
                              ]),
                          child: TextField(
                            maxLength: 1,
                            decoration: InputDecoration(
                              counterText: '',
                              border: InputBorder.none,
                            ),
                            cursorColor: Color.fromARGB(255, 238, 121, 108),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30.0),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 238, 121, 108))),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Screen3()),
                            );
                          },
                          child: Text("Resend code")),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
