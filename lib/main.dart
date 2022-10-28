import 'package:brocast_web/views/contact.dart';
import 'package:brocast_web/views/home_page.dart';
import 'package:brocast_web/views/privacy.dart';
import 'package:brocast_web/views/terms.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';


void main() {
  setPathUrlStrategy();

  runApp(
      MaterialApp(
        theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlue[800],
          // Define the default font family.
          fontFamily: 'Georgia',
        ),
        initialRoute: '/',
        routes: {
          HomePage.route: (context) => const HomePage(),
          Privacy.route: (context) => const Privacy(),
          Terms.route: (context) => const Terms(),
          Contact.route: (context) => const Contact()
        },
      )
  );
}
