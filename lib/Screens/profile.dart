import 'dart:ui';
import 'package:figmadesign/Screens/home_screen.dart';
import 'package:figmadesign/Screens/notification.dart';
import 'package:figmadesign/components/address.dart';
import 'package:figmadesign/components/address2.dart';
import 'package:figmadesign/components/bottombar.dart';
import 'package:figmadesign/components/drawer.dart';
import 'package:figmadesign/components/imagepicker.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var isSwitched;

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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotificationDemo()));
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
              child: Image.asset(""))
        ],
        title: Image.asset(""),
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
                    height: 60.0,
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
                                          color: Color.fromARGB(
                                              255, 238, 121, 108),
                                        ),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            top: 20.0,
                            left: 155.0,
                            child: Text(
                              "profile",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ))
                      ],
                    )),
                Column(
                  children: [
                    Container(
                      child: ImagePickerDemo(),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 10.0),
                        Text(
                          "Active Status",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        SizedBox(width: 160.0),
                        Switch(
                          value: isSwitched ?? true,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                              print(isSwitched);
                            });
                          },
                          activeTrackColor: Colors.green,
                          activeColor: Color.fromARGB(255, 249, 255, 249),
                        ),
                      ],
                    ),
                    Container(
                        height: 50.0,
                        margin: EdgeInsets.only(top: 10.0),
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: TextField(
                          cursorColor: Color.fromARGB(255, 0, 0, 0),
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 171, 177, 202)),
                            labelText: "Name",
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 254, 218, 41),
                              ),
                            ),
                          ),
                        )),
                    Container(
                        height: 50.0,
                        margin: EdgeInsets.only(top: 10.0),
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          cursorColor: Color.fromARGB(255, 0, 0, 0),
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 171, 177, 202)),
                            labelText: "Phone",
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 254, 218, 41),
                              ),
                            ),
                          ),
                        )),
                    Container(
                        height: 50.0,
                        margin: EdgeInsets.only(top: 10.0),
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: TextField(
                          cursorColor: Color.fromARGB(255, 0, 0, 0),
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 171, 177, 202)),
                            labelText: "Email",
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 254, 218, 41),
                              ),
                            ),
                          ),
                        )),
                    Container(
                        height: 50.0,
                        margin: EdgeInsets.only(top: 10.0),
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: TextField(
                          cursorColor: Color.fromARGB(255, 0, 0, 0),
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 171, 177, 202)),
                            labelText: "Postal Code",
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 254, 218, 41),
                              ),
                            ),
                          ),
                        )),
                    Container(
                        height: 50.0,
                        margin: EdgeInsets.only(top: 10.0),
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: TextField(
                          cursorColor: Color.fromARGB(255, 0, 0, 0),
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 171, 177, 202)),
                            labelText: "Password",
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 254, 218, 41),
                              ),
                            ),
                          ),
                        )),
                    Container(
                        height: 50.0,
                        margin: EdgeInsets.only(top: 10.0),
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: TextField(
                          cursorColor: Color.fromARGB(255, 0, 0, 0),
                          decoration: InputDecoration(
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 171, 177, 202)),
                            labelText: "Socel LInk",
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 254, 218, 41),
                              ),
                            ),
                          ),
                        )),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        SizedBox(width: 10.0),
                        Text(
                          "Address",
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        AddressCart(
                            icon_name: Icons.home,
                            title: "Home",
                            subtitle: "112.St west",
                            onpress: () {}),
                        AddressCart2(
                            icon_name: Icons.apartment,
                            title: "Apartment",
                            subtitle: "112.St west",
                            onpress: () {}),
                        AddressCart2(
                            icon_name: Icons.badge,
                            title: "Office",
                            subtitle: "112.St west",
                            onpress: () {}),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
