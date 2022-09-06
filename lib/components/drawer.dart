import 'package:figmadesign/Screens/contactus.dart';
import 'package:figmadesign/Screens/googlemap.dart';
import 'package:figmadesign/Screens/mooner.dart';
import 'package:figmadesign/Screens/notification.dart';
import 'package:figmadesign/Screens/privacypolicy.dart';
import 'package:figmadesign/components/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DrawerScreen extends StatefulWidget {
  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 239, 241, 245),
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 254, 218, 41),
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
            ),
            accountName: Text(
              "Avail",
              style: TextStyle(color: Color.fromARGB(255, 5, 5, 5)),
            ),
            accountEmail: Text(
              "avail23@gmail.com",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "images/Rectangle.png",
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.wallet, color: Color.fromARGB(255, 0, 0, 0)),
            title: Text(
              "Wallet",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TabBarDemo()));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.inbox,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            title: Text(
              "Inbox",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotificationDemo()));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.description,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            title: Text(
              "Privacy Policies",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Privacypolicy()));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.album_outlined,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            title: Text(
              "About Mooner",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Mooner()));
            },
          ),
          Divider(),
          ListTile(
            leading:
                Icon(Icons.contact_page, color: Color.fromARGB(255, 0, 0, 0)),
            title: Text(
              "Contact Us",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactUs()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            title: Text(
              "Exit",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              SystemNavigator.pop();
            },
          )
        ],
      ),
    );
  }
}
