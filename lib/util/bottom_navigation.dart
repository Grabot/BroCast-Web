import 'package:brocast_web/views/contact.dart';
import 'package:brocast_web/views/features.dart';
import 'package:brocast_web/views/privacy.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../views/terms.dart';


Widget bottomNavigation(BuildContext context, double width) {

  bool addPadding = true;
  double centerWidth = 1200;
  double sidesPadding = (width - centerWidth) / 2;
  if (width < centerWidth) {
    centerWidth = width;
    addPadding = false;
  }

  DateTime now = new DateTime.now();
  int currentYear = now.year;

  return Container(
    color: Colors.blueGrey,
    child: Column(
      children: [
        Row(
          children: [
            addPadding ? SizedBox(width: sidesPadding) : Container(),
            brocastColumn(context, centerWidth/3),
            zwaarColumn(context, centerWidth/3),
            downloadColumn(context, centerWidth/3),
            addPadding ? SizedBox(width: sidesPadding) : Container(),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            addPadding ? SizedBox(width: sidesPadding) : Container(),
            Container(
              padding: const EdgeInsets.all(16),
              child: Text(
                "$currentYear © Zwaar Developers",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ),
        SizedBox(height: 10),
      ],
    ),
  );
}

Widget brocastColumn(BuildContext context, double brocastWidth) {
  return Container(
    padding: const EdgeInsets.all(16),
    width: brocastWidth-16,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        Text(
          "Brocast",
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, Features.route);
          },
          child: Text(
            "Features",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, Privacy.route);
          },
          child: Text(
            "Privacy",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, Terms.route);
          },
          child: Text(
            "Terms",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, Contact.route);
          },
          child: Text(
            "Contact",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        SizedBox(height: 10),
      ],
    ),
  );
}

Widget zwaarColumn(BuildContext context, double zwaarWidth) {
  return Container(
    padding: const EdgeInsets.all(16),
    width: zwaarWidth-16,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        Text(
          "Zwaar Developers",
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15),
        InkWell(
          onTap: () {
            final Uri url = Uri.parse('https://zwaar.dev');
            _launchUrl(url);
          },
          child: Text(
            "About",
            style: TextStyle(color: Colors.white, fontSize: 18)
          ),
        ),
        InkWell(
          onTap: () {
            final Uri url = Uri.parse('https://zwaar.dev/contact');
            _launchUrl(url);
          },
          child: Text(
            "Get in touch",
            style: TextStyle(color: Colors.white, fontSize: 18)
          ),
        ),
        SizedBox(height: 10),
      ],
    ),
  );
}

Widget downloadColumn(BuildContext context, double downloadWidth) {
  return Container(
    padding: const EdgeInsets.all(16),
    width: downloadWidth-16,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        Text(
          "Download",
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15),
        InkWell(
          onTap: () {
            final Uri url = Uri.parse('https://play.google.com/store/apps/details?id=nl.brocast');
            _launchUrl(url);
          },
          child: Text(
            "Android",
            style: TextStyle(color: Colors.white, fontSize: 18)
          ),
        ),
        InkWell(
          onTap: () {
            final Uri url = Uri.parse('https://apps.apple.com/nl/app/brocast/id1571745515?platform=iphone');
            _launchUrl(url);
          },
          child: Text(
            "Iphone",
            style: TextStyle(color: Colors.white, fontSize: 18)
          ),
        ),
        SizedBox(height: 10),
      ],
    ),
  );
}

Future<void> _launchUrl(Uri url) async {
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}
