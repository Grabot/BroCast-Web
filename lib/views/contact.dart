import 'package:flutter/material.dart';
import '../util/app_bar.dart';
import '../util/logo.dart';


class Contact extends StatefulWidget {

  static const String route = '/contact';

  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBarAgeOfGold(context, 4),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              logo(width),
              Container(
                width: width,
                padding: const EdgeInsets.all(40.0),
                child: SelectionArea(
                  child: Column(
                    children: const [
                      SizedBox(height: 50),
                      Text(
                        "Thanks for Visiting the Brocast page",
                        style: TextStyle(color: Color(0xfff1f1f1), fontSize: 20)
                      ),
                      Text(
                          "Brocast is made with passion and emotion by the team at Zwaar Developers",
                          style: TextStyle(color: Color(0xfff1f1f1), fontSize: 20)
                      ),
                      SizedBox(height: 60),
                      Text(
                          "If you want to get in touch with the team to ask for our services,",
                          style: TextStyle(color: Color(0xfff1f1f1), fontSize: 20)
                      ),
                      Text(
                          "please download our app \"Brocast\" and send a message to \"Sander 🥰\"",
                          style: TextStyle(color: Color(0xfff1f1f1), fontSize: 20)
                      ),
                      SizedBox(height: 20),
                      Text(
                          "Or send an email to the CEO at \"SanderKools@zwaar.dev\"",
                          style: TextStyle(color: Color(0xfff1f1f1), fontSize: 20)
                      ),
                      SizedBox(height: 200),
                    ],
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }

}

