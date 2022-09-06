import 'package:figmadesign/Screens/haircut.dart';
import 'package:figmadesign/Screens/screen2.dart';
import 'package:flutter/material.dart';

class Tasks extends StatelessWidget {
  final String img_name;
  final String title;
  final VoidCallback onpress;
  const Tasks(
      {Key? key,
      required this.img_name,
      required this.onpress,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 70.0,
            height: 70.0,
            margin:
                EdgeInsets.only(top: 10.0, bottom: 10.0, right: 10, left: 8.0),
            padding: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              border: (Border.all(width: 0.1, color: Colors.white)),
              borderRadius: const BorderRadius.all(const Radius.circular(25.0)),
              color: Color.fromARGB(255, 254, 218, 41),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0.0),
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 254, 218, 41),
                  )),
              onPressed: onpress,
              child: Image.asset(
                "images/$img_name",
                fit: BoxFit.cover,
              ),
            )),
        Text(("$title"))
      ],
    );
  }
}
