import 'package:flutter/material.dart';

class AddressCart extends StatelessWidget {
  var icon_name;
  var title;
  var subtitle;
  final VoidCallback onpress;

  AddressCart(
      {Key? key,
      required this.icon_name,
      required this.title,
      required this.subtitle,
      required this.onpress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 80.0,
        height: 95.0,
        margin: EdgeInsets.only(top: 10.0, bottom: 10.0, right: 10, left: 8.0),
        padding: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          border: (Border.all(width: 0.1, color: Colors.white)),
          borderRadius: const BorderRadius.all(const Radius.circular(15.0)),
          color: Color.fromARGB(255, 238, 121, 108),
        ),
        child: Column(
          children: [
            ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0.0),
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 238, 121, 108),
                    )),
                onPressed: onpress,
                child: Icon(icon_name)),
            SizedBox(
              width: 10.0,
            ),
            Text(title, style: TextStyle(color: Colors.white)),
            Text(
              subtitle,
              style: TextStyle(fontSize: 10.0, color: Colors.white),
            ),
          ],
        ));
  }
}
