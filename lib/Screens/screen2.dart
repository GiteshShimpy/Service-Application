import 'package:figmadesign/Screens/screen3.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(children: [
                SizedBox(width: 104.0),
                Image.asset("images/Line 182.png"),
                SizedBox(width: 25.0),
                Column(
                  children: [
                    Image.asset(
                      "images/image36.png",
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Smart Service",
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ]),
              Container(
                  height: 210.0,
                  width: 380.0,
                  child: Image.asset(
                    "images/Screen_1-2.png",
                    fit: BoxFit.cover,
                  )),
              SizedBox(height: 50.0),
              Text(
                "Welcome to Mooner",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0, left: 95.0),
                width: 300.0,
                child: Text("Get into the most empowering"),
              ),
              Container(
                  width: 300.0,
                  margin: EdgeInsets.only(top: 5.0, left: 65.0),
                  child: Text("community to become self employed")),
              SizedBox(height: 80.0),
              SizedBox(
                width: 280.0,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 133, 109, 201))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Screen3()),
                      );
                    },
                    child: Text("Sign in")),
              ),
              SizedBox(height: 20.0),
              SizedBox(
                width: 280.0,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 238, 121, 108))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Screen3()),
                      );
                    },
                    child: Text("Sign in")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
