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