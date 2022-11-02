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
                firstColumn((centerWidth / 2) - 15),
                SizedBox(width: 30),
                secondColumn((centerWidth / 2) - 15),
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
      child: Column(
        children: [
          textBox(columnWidth),
          SizedBox(height: 30),
          photosBox(columnWidth),
        ],
      ),
    );
  }

  Widget secondColumn(double columnWidth) {
    return Container(
      width: columnWidth,
      child: Column(
        children: [
          broupBox(columnWidth),
          securityBox(columnWidth)
        ],
      ),
    );
  }

  Widget textBox(double boxWidth) {
    Color textColour = Color(0xff686868);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 80),
      width: boxWidth,
      color: Colors.orange.shade100,
      child: Column(
        children: [
          SizedBox(height: 80),
          Text(
            "TEXTS",
            style: TextStyle(color: textColour, fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          Text(
            "Simple, Emotional, \nReliable messaging",
            style: TextStyle(color: textColour, fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          Text(
            "No matter where they come from, what they do, who they love or what gender they are, everyone can be your bro! All that is required is some mutual love and understanding. All that can be done by sending them messages via Brocast! Now you can message all of your bros for free over the internet!",
            style: TextStyle(color: textColour, fontSize: 18),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          Text(
            ".",
            style: TextStyle(color: textColour, fontSize: 18),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          SizedBox(
            height: boxWidth+200,
            child: Image(
              image: AssetImage("assets/images/Brocast_promo.png"),
            ),
          ),
          SizedBox(height: 80),
        ],
      ),
    );
  }

  Widget broupBox(double boxWidth) {
    Color textColour = Color(0xff686868);
    double pictureWidth = boxWidth/4;
    pictureWidth -= 40;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 80),
      width: boxWidth,
      color: Colors.green.shade100,
      child: Column(
          children: [
          SizedBox(height: 80),
          Text(
            "BROUP CHAT",
            style: TextStyle(color: textColour, fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          Text(
            "Bro groups to keep in touch",
            style: TextStyle(color: textColour, fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          Text(
            "Keep in touch with the groups of bros that matter the most emotionally. With broup chats, you can share messages, photos, and emotions. You can also name your broup, mute or customize the chat with colour and aliases, and more!",
            style: TextStyle(color: textColour, fontSize: 18),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 80),
          Row(
            children: [
              SizedBox(width: pictureWidth),
              Column(
                children: [
                  SizedBox(
                    width: pictureWidth,
                    height: pictureWidth,
                    child: Image(
                      image: AssetImage("assets/images/Brocast_Emotion.png"),
                    ),
                  ),
                  Container(
                    width: pictureWidth,
                    child: Text(
                      "LOVE",
                      style: TextStyle(color: textColour, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: pictureWidth,
                    height: pictureWidth,
                    child: Image(
                      image: AssetImage("assets/images/Brocast_Bro.png"),
                    ),
                  ),
                  Container(
                    width: pictureWidth,
                    child: Text(
                      "BROS",
                      style: TextStyle(color: textColour, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    width: pictureWidth,
                    height: pictureWidth,
                    child: Image(
                      image: AssetImage("assets/images/Brocast_enjoyment.png"),
                    ),
                  ),
                  Container(
                    width: pictureWidth,
                    child: Text(
                      "EMOTIONS",
                      style: TextStyle(color: textColour, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(width: pictureWidth),
            ],
          ),
          SizedBox(height: 80),
        ]
      ),
    );
  }

  Widget photosBox(double boxWidth) {
    Color textColour = Color(0xff686868);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 80),
      color: Colors.blue.shade100,
      width: boxWidth,
      child: Column(
        children: [
          SizedBox(
            height: boxWidth-150,
            child: Image(
              image: AssetImage("assets/images/Brocast_photo_promo.png"),
            ),
          ),
          SizedBox(height: 80),
          Text(
            "PHOTOS AND IMAGES",
            style: TextStyle(color: textColour, fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          Text(
            "Share Moments that Matter",
            style: TextStyle(color: textColour, fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          Text(
            "Send photos and images on Brocast instantly. You can even capture the moments that matter to you most emotionally with a built-in camera. With Brocast, photos and images send quickly even if you're on a slow connection.",
            style: TextStyle(color: textColour, fontSize: 18),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 80),
        ],
      ),
    );
  }

  Widget securityBox(double boxWidth) {
    return Container(
      width: boxWidth,
      height: boxWidth,
    );
  }
}