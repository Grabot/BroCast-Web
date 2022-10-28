import 'package:flutter/material.dart';
import '../util/app_bar.dart';


class HomePage extends StatefulWidget {

  static const String route = '/';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarAgeOfGold(context, 0),
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
          ],
        ),
      ),
    );
  }
}