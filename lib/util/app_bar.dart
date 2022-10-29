

import 'dart:math';

import 'package:brocast_web/views/features.dart';
import 'package:brocast_web/views/home_page.dart';
import 'package:brocast_web/views/privacy.dart';
import 'package:brocast_web/views/terms.dart';
import 'package:flutter/material.dart';

import '../views/contact.dart';

AppBar appBarAgeOfGold(BuildContext context, int page) {
  double width = MediaQuery.of(context).size.width;
  return AppBar(
    toolbarHeight: 80,
    elevation: 0,
    backgroundColor: Colors.orange,
    flexibleSpace: Container(
      color: Colors.orange,
    ),
    leading: topAppBarRow(context, page),
    leadingWidth: width,
    automaticallyImplyLeading: false,
  );
}

Widget topAppBarRow(BuildContext context, int page) {
  double width = MediaQuery.of(context).size.width;
  double sideSpacers = 0;
  double buttonWidth = 120;
  double firstButtonSpacer = 200;
  double fontSize = 24;

  double functionWidth = buttonWidth * 5 + firstButtonSpacer + (16 * 5);
  print("width: $width");
  bool spacers = false;
  if (width >= functionWidth + 4) {
    sideSpacers = (width - functionWidth) / 2;
    // There still seems to be some overflow, so remove 2
    sideSpacers -= 2;
    if (sideSpacers >= 0) {
      spacers = true;
    }
  } else {
    firstButtonSpacer = width / 10;
    double remaining = width - firstButtonSpacer - (8 * 5);
    buttonWidth = remaining / 5;
    firstButtonSpacer -= 5;
    fontSize = 12;
  }

  if (width < 320) {
    fontSize = 6;
  } else if (width < 440) {
    fontSize = 8;
  }

  return Row(
      children: [
        spacers ? SizedBox(width: sideSpacers) : Container(),
        Container(
          color: page == 0 ? Colors.orangeAccent : Colors.orange,
          child: InkWell(
            onTap: () {
              if (page != 0) {
                Navigator.pushNamed(context, HomePage.route);
              }
            },
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  width: buttonWidth-10,
                  height: 80,
                  child: const Image(
                    image: AssetImage(
                        "assets/images/brocast_transparent.png",
                    ),
                  ),
                ),
                Container(
                  child: Text(
                      "Brocast",
                      style: TextStyle(
                          color: Color(0xFFFBFBFB),
                          fontSize: fontSize
                      )
                  ),
                ),
                SizedBox(width: 10)
              ]
            ),
          ),
        ),
        SizedBox(width: firstButtonSpacer),
        Container(
          color: page == 1 ? Colors.orangeAccent : Colors.orange,
          child: InkWell(
            onTap: () {
              if (page != 1) {
                Navigator.pushNamed(context, Features.route);
              }
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              width: buttonWidth,
              height: 80,
              child: Center(
                child: Text(
                    "Features",
                    style: TextStyle(
                        color: Color(0xFFFBFBFB),
                        fontSize: fontSize
                    )
                ),
              ),
            ),
          ),
        ),
        Container(
          color: page == 2 ? Colors.orangeAccent : Colors.orange,
          child: InkWell(
            onTap: () {
              if (page != 2) {
                Navigator.pushNamed(context, Privacy.route);
              }
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              width: buttonWidth,
              height: 80,
              child: Center(
                child: Text(
                    "Privacy",
                    style: TextStyle(
                        color: Color(0xFFFBFBFB),
                        fontSize: fontSize
                    )
                ),
              ),
            ),
          ),
        ),
        Container(
          color: page == 3 ? Colors.orangeAccent : Colors.orange,
          child: InkWell(
            onTap: () {
              if (page != 3) {
                Navigator.pushNamed(context, Terms.route);
              }
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              width: buttonWidth,
              height: 80,
              child: Center(
                child: Text(
                    "Terms",
                    style: TextStyle(
                        color: Color(0xFFFBFBFB),
                        fontSize: fontSize
                    )
                ),
              ),
            ),
          ),
        ),
        Container(
          color: page == 4 ? Colors.orangeAccent : Colors.orange,
          child: InkWell(
            onTap: () {
              if (page != 4) {
                Navigator.pushNamed(context, Contact.route);
              }
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              width: buttonWidth,
              height: 80,
              child: Center(
                child: Text(
                    "Contact",
                    style: TextStyle(
                        color: Color(0xFFFBFBFB),
                        fontSize: fontSize
                    )
                ),
              ),
            ),
          ),
        ),
        spacers ? SizedBox(width: sideSpacers) : Container(),
      ]
  );

}
