import 'package:figmadesign/components/bottombar.dart';
import 'package:flutter/material.dart';

class NotificationDemo extends StatefulWidget {
  NotificationDemo({Key? key}) : super(key: key);

  @override
  State<NotificationDemo> createState() => _NotificationDemoState();
}

class _NotificationDemoState extends State<NotificationDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      margin: EdgeInsets.only(top: 30.0, left: 15.0),
                      decoration: BoxDecoration(
                        border: (Border.all(width: 0.1, color: Colors.white)),
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(45.0)),
                        color: Colors.white,
                      ),
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
                            Navigator.pop(context);
                          },
                          child: Text(
                            "<",
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Color.fromARGB(255, 238, 121, 108),
                            ),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35.0,
                ),
                Row(
                  children: [
                    Text(
                      "   Notification",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    margin: EdgeInsets.only(top: 35.0, left: 10.0),
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      border: (Border.all(width: 0.1, color: Colors.white)),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(15.0)),
                      color: Color.fromARGB(255, 238, 121, 108),
                    ),
                    child: Image.asset("images/notificationimg.png"),
                  ),
                  Container(
                    width: 300.0,
                    height: 50.0,
                    margin: EdgeInsets.only(left: 5.0, top: 35.0),
                    padding: EdgeInsets.all(5.0),
                    child: Column(children: [
                      Row(
                        children: [
                          Text("Jhony Bravo",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 140.0,
                          ),
                        
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                        
                          SizedBox(
                            width: 115.0,
                          ),
                          
                        ],
                      ),
                    ]),
                  ),
                ]),
                Divider(
                  height: 30.0,
                ),
                Row(children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    margin: EdgeInsets.only(top: 5.0, left: 10.0),
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      border: (Border.all(width: 0.1, color: Colors.white)),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(15.0)),
                      color: Color.fromARGB(255, 217, 251, 224),
                    ),
                    child: Image.asset("images/notificationimg.png"),
                  ),
                  Container(
                    width: 300.0,
                    height: 50.0,
                    margin: EdgeInsets.only(left: 5.0, top: 10.0),
                    padding: EdgeInsets.all(5.0),
                    child: Column(children: [
                      Row(
                        children: [
                          Text("Ava",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                         
                        ],
                      ),
                    ]),
                  ),
                ]),
                Divider(
                  height: 30.0,
                ),
                Row(children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    margin: EdgeInsets.only(top: 5.0, left: 10.0),
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      border: (Border.all(width: 0.1, color: Colors.white)),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(15.0)),
                      color: Color.fromARGB(255, 238, 121, 108),
                    ),
                    child: Image.asset("images/notificationimg.png"),
                  ),
                  Container(
                    width: 300.0,
                    height: 50.0,
                    margin: EdgeInsets.only(left: 5.0, top: 10.0),
                    padding: EdgeInsets.all(5.0),
                    child: Column(children: [
                      Row(
                        children: [
                          Text("Anderson",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 160.0,
                          ),
                          Text("2 min ago"),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text("Started his haircut job",
                              style: TextStyle(fontSize: 12.0)),
                          SizedBox(
                            width: 115.0,
                          ),
                          Text(
                            "Unread",
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ]),
                Divider(
                  height: 30.0,
                ),
                Row(children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    margin: EdgeInsets.only(top: 5.0, left: 10.0),
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      border: (Border.all(width: 0.1, color: Colors.white)),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(15.0)),
                      color: Color.fromARGB(255, 217, 251, 224),
                    ),
                    child: Image.asset("images/notificationimg.png"),
                  ),
                  Container(
                    width: 300.0,
                    height: 50.0,
                    margin: EdgeInsets.only(left: 5.0, top: 10.0),
                    padding: EdgeInsets.all(5.0),
                    child: Column(children: [
                      Row(
                        children: [
                          Text("Anderson",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 160.0,
                          ),
                          Text("2 min ago"),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text("Started his haircut job",
                              style: TextStyle(fontSize: 12.0)),
                          SizedBox(
                            width: 115.0,
                          ),
                          Text(
                            "Unread",
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ]),
                Divider(
                  height: 30.0,
                ),
                Row(children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    margin: EdgeInsets.only(top: 5.0, left: 10.0),
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      border: (Border.all(width: 0.1, color: Colors.white)),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(15.0)),
                      color: Color.fromARGB(255, 238, 121, 108),
                    ),
                    child: Image.asset("images/notificationimg.png"),
                  ),
                  Container(
                    width: 300.0,
                    height: 50.0,
                    margin: EdgeInsets.only(left: 5.0, top: 10.0),
                    padding: EdgeInsets.all(5.0),
                    child: Column(children: [
                      Row(
                        children: [
                          Text("Anna",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 200.0,
                          ),
                          Text("1 hr ago"),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text("Started his haircut job",
                              style: TextStyle(fontSize: 12.0)),
                          SizedBox(
                            width: 115.0,
                          ),
                          Text(
                            "Unread",
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ]),
                Divider(
                  height: 30.0,
                ),
                Row(children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    margin: EdgeInsets.only(top: 5.0, left: 10.0),
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      border: (Border.all(width: 0.1, color: Colors.white)),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(15.0)),
                      color: Color.fromARGB(255, 217, 251, 224),
                    ),
                    child: Image.asset("images/notificationimg.png"),
                  ),
                  Container(
                    width: 300.0,
                    height: 50.0,
                    margin: EdgeInsets.only(left: 5.0, top: 10.0),
                    padding: EdgeInsets.all(5.0),
                    child: Column(children: [
                      Row(
                        children: [
                          Text("Anderson",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 160.0,
                          ),
                          Text("2 min ago"),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text("Started his haircut job",
                              style: TextStyle(fontSize: 12.0)),
                          SizedBox(
                            width: 115.0,
                          ),
                          Text(
                            "Unread",
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ]),
                Divider(
                  height: 30.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
