import 'package:flutter/material.dart';
import '../util/app_bar.dart';


class Features extends StatefulWidget {

  static const String route = '/features';

  const Features({Key? key}) : super(key: key);

  @override
  State<Features> createState() => FeaturesState();
}

class FeaturesState extends State<Features> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarAgeOfGold(context, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            SizedBox(height: 80),
            Text(
              "from",
              style: TextStyle(
                  color: Colors.blueGrey, fontSize: 12),
            ),
            SizedBox(height: 6),
            Text(
              "Zwaar developers",
              style: TextStyle(
                  color: Colors.blueGrey, fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              "Features",
              style: TextStyle(
                  color: Colors.blueGrey, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}