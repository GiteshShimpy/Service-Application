import 'package:figmadesign/Screens/contactus.dart';
import 'package:figmadesign/Screens/mooner.dart';
import 'package:figmadesign/Screens/notification.dart';
import 'package:figmadesign/Screens/pay.dart';
import 'package:figmadesign/components/container_notification.dart';
import 'package:figmadesign/components/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
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
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(2.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      margin:
                          EdgeInsets.only(left: 15.0, top: 10.0, bottom: 10.0),
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
                Row(
                  children: [
                    SizedBox(
                      width: 18.0,
                      height: 10.0,
                    ),
                    Text(
                      "Wallet",
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                DefaultTabController(
                    length: 4, // length of tabs
                    initialIndex: 0,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                            child: TabBar(
                              labelColor: Colors.green,
                              unselectedLabelColor: Colors.black,
                              tabs: [
                                Tab(text: 'View summery'),
                                Tab(text: 'KYC'),
                                Tab(text: 'Add Bank Account'),
                                Tab(text: 'Wallet'),
                              ],
                            ),
                          ),
                          Container(
                              height: 600.0, //height of TabBarView
                              decoration: BoxDecoration(
                                  border: Border(
                                      top: BorderSide(
                                          color: Colors.grey, width: 0.5))),
                              child: TabBarView(children: <Widget>[
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Send",
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 238, 121, 108),
                                            ),
                                          ),
                                          style: ButtonStyle(
                                              elevation:
                                                  MaterialStateProperty.all(
                                                      0.0),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.white)),
                                        ),
                                        Text("Recieved"),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 15.0),
                                        Text(
                                          "40 Tokens",
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 10.0),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 15.0),
                                        Text(
                                          "Total Earning",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Color.fromARGB(
                                                255, 241, 121, 107),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    ContainerNotification(),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    ContainerNotification(),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    ContainerNotification(),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    ContainerNotification(),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    ContainerNotification(),
                                  ],
                                ),
                                Mooner(),
                                ContactUs(),
                                Pay(),
                              ]))
                        ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
