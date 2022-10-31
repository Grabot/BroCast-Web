import 'package:brocast_web/views/features.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../util/app_bar.dart';
import '../util/bottom_navigation.dart';


class HomePage extends StatefulWidget {

  static const String route = '/';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBarAgeOfGold(context, 0),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 80),
            BrocastMessagingView(width),
            SizedBox(height: 50),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, Features.route);
              },
              child: Text(
                "Explore Features",
                style: TextStyle(color: const Color(0xff6b6b6b), fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                backgroundColor: Colors.orange,
                minimumSize: Size(200, 60),
                shadowColor: Colors.orangeAccent.shade100,
                elevation: 5,
                side: BorderSide(
                    color: Colors.orangeAccent.shade400,
                    width: 2,
                    style: BorderStyle
                        .solid),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      30),
                ),
                tapTargetSize: MaterialTapTargetSize.padded,
              ),
            ),
            SizedBox(height: 50),
            bottomNavigation(context, width)
          ],
        ),
      ),
    );
  }

  Widget BrocastMessagingView(double width) {
    bool addPadding = true;
    double centerWidth = 1200;
    double sidesPadding = (width - centerWidth) / 2;
    if (width < 1200) {
      centerWidth = width;
      addPadding = false;
    }
    if (width > 800) {
      return Row(
        children: [
          addPadding ? SizedBox(width: sidesPadding) : Container(),
          Container(
              width: centerWidth / 2,
              child: brocastTextView(centerWidth/2)
          ),
          Container(
              width: centerWidth / 2,
              child: brocastImageView(centerWidth/2)
          ),
          addPadding ? SizedBox(width: sidesPadding) : Container(),
        ],
      );
    } else {
      // some simple mobile view thingy
      return Column(
        children: [
          Container(
              width: width,
              child: brocastTextView(width)
          ),
          SizedBox(height: 50),
          Container(
              width: width,
              child: brocastImageView(width)
          ),
        ],
      );
    }
  }

  Widget brocastTextView(double sectionWidth) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          SelectionArea(
            child: Column(
              children: [
                Text(
                    "Simple. Secure. \nEmotional. \nReliable messaging.",
                    style: TextStyle(color: const Color(0xff949494), fontSize: 50, fontWeight: FontWeight.bold)
                ),
                SizedBox(height: 40),
                Text(
                    "With Brocast, you'll get fast, simple, secure and emotional messaging for free over the internet, available on phones all over the world. \nNo number or email needed, just your name, emotions and your desire to talk to your friends!",
                    style: TextStyle(color: const Color(0xffdddddd), fontSize: 20)
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              final Uri url = Uri.parse('https://play.google.com/store/apps/details?id=nl.brocast');
              _launchUrl(url);
            },
            child: Row(
              children: [
                SizedBox(
                  width: 25,
                  height: 25,
                  child: Image(
                    image: AssetImage("assets/images/android.png"),
                  ),
                ),
                Text(
                    "    Android  ",
                    style: TextStyle(color: Colors.orange, fontSize: 20)
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Colors.orange,
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: () {
              final Uri url = Uri.parse('https://apps.apple.com/nl/app/brocast/id1571745515?platform=iphone');
              _launchUrl(url);
            },
            child: Row(
              children: [
                SizedBox(
                  width: 25,
                  height: 25,
                  child: Image(
                    image: AssetImage("assets/images/apple.png"),
                  ),
                ),
                Text(
                    "    Ios  ",
                    style: TextStyle(color: Colors.orange, fontSize: 20)
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Colors.orange,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget brocastImageView(double sectionWidth) {
    return Container(
      child: SizedBox(
        width: sectionWidth,
        height: sectionWidth + 300,
        child: Image(
          image: AssetImage("assets/images/Brocast_promo.png"),
        ),
      ),
    );
  }
}


Future<void> _launchUrl(Uri url) async {
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}
