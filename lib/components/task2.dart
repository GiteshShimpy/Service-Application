import 'package:flutter/material.dart';

class Tasks2 extends StatelessWidget {
  final String img_name;

  const Tasks2({Key? key, required this.img_name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        border: (Border.all(width: 0.1, color: Colors.white)),
        borderRadius: const BorderRadius.all(const Radius.circular(15.0)),
        color: Colors.white,
      ),
      child: Image.asset("images/$img_name"),
    );
  }
}
