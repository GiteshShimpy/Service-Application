import 'package:flutter/material.dart';

class Privacypolicy extends StatelessWidget {
  const Privacypolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 2, 2),
        title: Text(
          "Privacy policies",
        ),
        centerTitle: true,
      ),
      body: Container(
        width: 350.0,
        height: 680.0,
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        margin: EdgeInsets.only(left: 15.0, right: 5.0, top: 30.0),
        decoration: BoxDecoration(
            border: (Border.all(width: 0.1, color: Colors.white)),
            borderRadius: const BorderRadius.all(const Radius.circular(15.0)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 209, 200, 200),
                  spreadRadius: 3.0,
                  blurRadius: 5.0,
                  blurStyle: BlurStyle.normal),
            ]),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 5.0, top: 20.0),
              child: Text(
                "Privacy",
                style: TextStyle(
                    color: Color.fromARGB(255, 254, 218, 41),
                    decoration: TextDecoration.underline,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 5.0, top: 20.0),
              child: Text(
                "Please note that legal information, including legal templates and legal policies, is not legal advice. The information provided on this site is not legal advice, does not constitute a lawyer referral service, and no attorney-client or confidential relationship is or will be formed by use of the site.\n\nThe reproduction, distribution, display, or transmission of the content is strictly prohibited, unless authorized by FreePrivacyPolicy. All other company & product names may be trademarks of the respective companies with which they are associated.",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 5.0, top: 20.0),
              child: Text(
                "Policy",
                style: TextStyle(
                    color: Color.fromARGB(255, 254, 218, 41),
                    decoration: TextDecoration.underline,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 5.0, top: 20.0),
              child: Text(
                "We may update Our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.\n\nWe will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update the Last updated date at the top of Privacy Policy.\n\nYou are advised to review this Privacy Policy periodically for any changes.",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
