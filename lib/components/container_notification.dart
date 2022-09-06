import 'package:flutter/material.dart';

class ContainerNotification extends StatelessWidget {
  const ContainerNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: 80.0,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 241, 241, 241),
        border: (Border.all(width: 0.1, color: Colors.white)),
        borderRadius: const BorderRadius.all(const Radius.circular(15.0)),
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(5.0),
              margin: EdgeInsets.only(right: 5.0),
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
              width: 250.0,
              height: 50.0,
              margin: EdgeInsets.only(
                left: 5.0,
              ),
              padding: EdgeInsets.all(5.0),
              child: Column(children: [
                Row(
                  children: [
                    Text("Paid to",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 145.0,
                    ),
                    Text(
                      "Token:7",
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Text("Zach Watsen.",
                        style: TextStyle(
                            color: Color.fromARGB(255, 238, 121, 108),
                            fontSize: 15.0)),
                    SizedBox(
                      width: 90.0,
                    ),
                    Text(
                      "10:47AM",
                    ),
                  ],
                ),
              ]),
            ),
          ]),
    );
  }
}
