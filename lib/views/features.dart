import 'package:flutter/material.dart';
import '../util/app_bar.dart';
import '../util/bottom_navigation.dart';


class Features extends StatefulWidget {

  static const String route = '/features';

  const Features({Key? key}) : super(key: key);

  @override
  State<Features> createState() => FeaturesState();
}

class FeaturesState extends State<Features> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool addPadding = true;
    double centerWidth = 1200;
    double sidesPadding = (width - centerWidth) / 2;
    if (width < 1200) {
      centerWidth = width;
      addPadding = false;
    }
    return Scaffold(
      appBar: appBarAgeOfGold(context, 1),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                addPadding ? SizedBox(width: sidesPadding) : Container(),
                firstColumn(centerWidth / 2),
                secondColumn(centerWidth / 2),
                addPadding ? SizedBox(width: sidesPadding) : Container(),
              ],
            ),
            SizedBox(height: 50),
            bottomNavigation(context, width)
          ],
        ),
      ),
    );
  }

  Widget firstColumn(double columnWidth) {
    return Container(
      width: columnWidth,
      color: Colors.blue,
      child: Column(
        children: [
          textBox(columnWidth),
          photosBox(columnWidth)
        ],
      ),
    );
  }

  Widget secondColumn(double columnWidth) {
    return Container(
      width: columnWidth,
      color: Colors.red,
      child: Column(
        children: [
          broupBox(columnWidth),
          securityBox(columnWidth)
        ],
      ),
    );
  }

  Widget textBox(double boxWidth) {
    return Container(
      width: boxWidth,
      height: boxWidth,
      child: Column(
        children: [
          SizedBox(height: 15),
          Text(
            "TEXTS",
            style: TextStyle(color: Color(0xfff1f1f1), fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Text(
            "Simple, Emotional, \nReliable messaging",
            style: TextStyle(color: Color(0xfff1f1f1), fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Text(
            "Whether they are family or classmates or from somewhere else. Male or female or somewhere in between, everyone can be your bro. Now you can message all of your bros for free over the internet! Brocast uses your phone's Internet connection to send messages without fees!",            style: TextStyle(color: Color(0xfff1f1f1), fontSize: 18),
          ),
        ],
      ),
    );
  }

  Widget broupBox(double boxWidth) {
    return Container(
      width: boxWidth,
      height: boxWidth,
    );
  }

  Widget photosBox(double boxWidth) {
    return Container(
      width: boxWidth,
      height: boxWidth,
    );
  }

  Widget securityBox(double boxWidth) {
    return Container(
      width: boxWidth,
      height: boxWidth,
    );
  }
}