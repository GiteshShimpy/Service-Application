import 'package:figmadesign/Screens/notification.dart';
import 'package:figmadesign/components/bottombar.dart';
import 'package:figmadesign/components/drawer.dart';
import 'package:flutter/material.dart';

class Pay extends StatefulWidget {
  Pay({Key? key}) : super(key: key);

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 370.0,
                  width: 400.0,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: Container(
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
                          top: 70.0,
                          left: 30.0,
                          child: Container(
                            width: 330.0,
                            height: 240.0,
                            child: Image.asset(
                              "images/payimg.png",
                            ),
                          )),
                    ],
                  )),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: Text(
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                          "Topup")),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 12.0, top: 50.0),
                    child: Text(
                      "Amount",
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Color.fromARGB(255, 140, 150, 163),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Container(
                width: 350.0,
                height: 50.0,
                margin: EdgeInsets.only(top: 10.0),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: (Border.all(width: 0.1, color: Colors.white)),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(18.0)),
                  color: Color.fromARGB(255, 243, 243, 243),
                ),
                child: TextField(
                  decoration:
                      new InputDecoration.collapsed(hintText: "\$ 300.00"),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: 350.0,
                height: 50.0,
                decoration: BoxDecoration(
                  border: (Border.all(width: 0.1, color: Colors.white)),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(25.0)),
                  color: Color.fromARGB(255, 254, 218, 41),
                ),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 254, 218, 41),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ))),
                    onPressed: () {},
                    child: Text("Pay",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ))),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
