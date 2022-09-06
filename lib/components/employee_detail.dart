import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class EmployeeDetail extends StatelessWidget {
  var Img_name;

  EmployeeDetail({Key? key, required this.Img_name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: 160.0,
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        border: (Border.all(width: 0.1, color: Colors.white)),
        borderRadius: const BorderRadius.all(const Radius.circular(15.0)),
        color: Color.fromARGB(255, 236, 235, 235),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 50.0,
                height: 50.0,
                child: Image.asset("images/$Img_name"),
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                children: [
                  Text("Jhony Bravo",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold)),
                  Text(
                    "Haircut Artist",
                    style: TextStyle(
                      color: Color.fromARGB(255, 127, 141, 161),
                    ),
                  ),
                  Row(
                    children: [
                      Text("* ",
                          style:
                              TextStyle(color: Colors.amber, fontSize: 20.0)),
                      Text("4.9  ",
                          style: TextStyle(
                            color: Color.fromARGB(255, 238, 121, 108),
                          )),
                      Text("(45)"),
                    ],
                  )
                ],
              ),
              SizedBox(width: 80.0),
              Column(
                children: [
                  Text(
                    "             \$249",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(children: [
                    Icon(
                      Icons.message_sharp,
                      color: Color.fromARGB(255, 127, 141, 161),
                    ),
                    Text(
                      " Message",
                      style: TextStyle(
                          color: Color.fromARGB(255, 127, 141, 161),
                          decoration: TextDecoration.underline),
                    ),
                  ])
                ],
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
            width: 350.0,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 238, 121, 108),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ))),
                onPressed: () {},
                child: Text("Hire Now",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ))),
          ),
        ],
      ),
    );
  }
}
