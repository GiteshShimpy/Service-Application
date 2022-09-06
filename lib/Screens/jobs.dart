import 'package:figmadesign/Screens/notification.dart';
import 'package:figmadesign/components/bottombar.dart';
import 'package:figmadesign/components/cart.dart';
import 'package:figmadesign/components/drawer.dart';
import 'package:flutter/material.dart';

class Jobs extends StatefulWidget {
  Jobs({Key? key}) : super(key: key);

  @override
  State<Jobs> createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
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
              Row(
                children: [
                  SizedBox(
                    width: 60.0,
                    height: 50.0,
                    child: Container(
                      margin: EdgeInsets.only(left: 10.0),
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
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  Text(
                    "   posted jobs",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 180.0),
                  Container(
                    height: 45.0,
                    width: 50.0,
                    padding: EdgeInsets.all(0.0),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 186, 109, 201),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ))),
                        onPressed: () {},
                        child: Icon(size: 20.0, Icons.format_align_center)),
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
                      title: "Non-Halal",
                      subtitle: "Starting from \$999"),
                ],
              ),
              Row(
                children: [
                  Cart(
                      img_name: "Vector2.png",
                      title: "Halal",
                      subtitle: "Starting from \$999"),
                  SizedBox(width: 10.0),
                  Cart(
                      img_name: "Vector3.png",
                      title: "Non-Halal",
                      subtitle: "Starting from \$999"),
                ],
              ),
              Row(
                children: [
                  Cart(
                      img_name: "Vector4.png",
                      title: "Halal",
                      subtitle: "Starting from \$999"),
                  SizedBox(width: 10.0),
                  Cart(
                      img_name: "Vector5.png",
                      title: "Non-Halal",
                      subtitle: "Starting from \$999"),
                ],
              ),
              Row(
                children: [
                  Cart(
                      img_name: "Vector1.png",
                      title: "Non-Halal",
                      subtitle: "Starting from \$999"),
                  SizedBox(width: 10.0),
                  Cart(
                      img_name: "Vector4.png",
                      title: "Halal",
                      subtitle: "Starting from \$999"),
                ],
              ),
              Row(
                children: [
                  Cart(
                      img_name: "Vector4.png",
                      title: "Halal",
                      subtitle: "Starting from \$999"),
                  SizedBox(width: 10.0),
                  Cart(
                      img_name: "Vector5.png",
                      title: "Non-Halal",
                      subtitle: "Starting from \$999"),
                ],
              ),
              Row(
                children: [
                  Cart(
                      img_name: "Vector1.png",
                      title: "Non-Halal",
                      subtitle: "Starting from \$999"),
                  SizedBox(width: 10.0),
                  Cart(
                      img_name: "Vector4.png",
                      title: "Halal",
                      subtitle: "Starting from \$999"),
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
                      title: "Non-Halal",
                      subtitle: "Starting from \$999"),
                ],
              ),
              Row(
                children: [
                  Cart(
                      img_name: "Vector2.png",
                      title: "Halal",
                      subtitle: "Starting from \$999"),
                  SizedBox(width: 10.0),
                  Cart(
                      img_name: "Vector3.png",
                      title: "Non-Halal",
                      subtitle: "Starting from \$999"),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
