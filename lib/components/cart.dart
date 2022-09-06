import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  var img_name;

  var title;
  var subtitle;
  Cart(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.img_name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 144.0,
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.only(top: 20.0, bottom: 5.0, right: 15, left: 10.0),
      decoration: BoxDecoration(
        border: (Border.all(width: 0.1, color: Colors.white)),
        borderRadius: const BorderRadius.all(const Radius.circular(15.0)),
        color: Color.fromARGB(255, 243, 243, 243),
      ),
      child: Column(
        children: [
          Container(
            height: 90.0,
            child: Image.asset(
              "images/$img_name",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            "$title",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "$subtitle",
            style: TextStyle(
              color: Color.fromARGB(255, 133, 109, 201),
            ),
          ),
        ],
      ),
    );
  }
}
