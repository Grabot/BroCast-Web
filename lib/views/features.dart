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

  Color textColour = Color(0xff686868);

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
        child: SelectionArea(
          child: Column(
            children: [
              featureContent(addPadding, sidesPadding, centerWidth, width),
              SizedBox(height: 50),
              bottomNavigation(context, width)
            ],
          ),
        )
      ),
    );
  }

  Widget featureContent(bool addPadding, double sidesPadding, double centerWidth, double width) {
    if (width < 800) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            textBox(centerWidth-40, 20),
            SizedBox(height: 30),
            photosBox(centerWidth-40, 20),
            SizedBox(height: 30),
            broupBox(centerWidth-40, 20),
            SizedBox(height: 30),
            securityBox(centerWidth-40, 20),
            SizedBox(height: 30),
            openSourceBox(centerWidth-40, 20),
          ],
        ),
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addPadding ? SizedBox(width: sidesPadding) : Container(),
              firstColumn((centerWidth / 2) - 15),
              SizedBox(width: 30),
              secondColumn((centerWidth / 2) - 15),
              addPadding ? SizedBox(width: sidesPadding) : Container(),
            ],
          ),
        ],
      );
    }
  }

  Widget firstColumn(double columnWidth) {
    return Container(
      width: columnWidth,
      child: Column(
        children: [
          textBox(columnWidth, 80),
          SizedBox(height: 30),
          photosBox(columnWidth, 80),
        ],
      ),
    );
  }

  Widget secondColumn(double columnWidth) {
    return Container(
      width: columnWidth,
      child: Column(
        children: [
          broupBox(columnWidth, 80),
          SizedBox(height: 30),
          securityBox(columnWidth, 80),
          SizedBox(height: 30),
          openSourceBox(columnWidth, 80)
        ],
      ),
    );
  }

  Widget textBox(double boxWidth, double padding) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: padding),
      width: boxWidth,
      color: Colors.orange.shade200,
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
            width: boxWidth,
            child: Image(
              image: AssetImage("assets/images/Brocast_promo.png"),
            ),
          ),
          SizedBox(height: 80),
        ],
      ),
    );
  }

  Widget broupBox(double boxWidth, double padding) {
    double pictureWidth = boxWidth/4;
    pictureWidth -= 40;
    print("picture: $pictureWidth");
    return Container(
      padding: EdgeInsets.symmetric(horizontal: padding),
      width: boxWidth,
      color: Colors.green.shade200,
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
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
            ],
          ),
          SizedBox(height: 80),
        ]
      ),
    );
  }

  Widget photosBox(double boxWidth, double padding) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: padding),
      color: Colors.blue.shade200,
      width: boxWidth,
      child: Column(
        children: [
          SizedBox(
            width: boxWidth,
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

  Widget securityBox(double boxWidth, double padding) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: padding),
      color: Color(0xFF51cce0),
      width: boxWidth,
      child: Column(
        children: [
          SizedBox(height: 30),
          SizedBox(
            child: Image.asset(
              'assets/images/security.gif',
              width: boxWidth,
            ),
          ),
          SizedBox(height: 30),
          Text(
            "END-TO-END ENCRYPTION",
            style: TextStyle(color: textColour, fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          Text(
            "Security by Default",
            style: TextStyle(color: textColour, fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          Text(
            "Some of your most personal emotions are shared on Brocast with your bros, which is why we built end-to-end encryption into our app. When end-to-end encrypted, your messages are secured so only you and your bro you're communicating with can read to your emotions. Once everyone has read the message it is stored on your phones and all other traces are completely removed",
            style: TextStyle(color: textColour, fontSize: 18),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 80),
        ]
      )
    );
  }

  Widget openSourceBox(double boxWidth, double padding) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: padding),
      color: Colors.red.shade200,
      width: boxWidth,
      child: Column(
        children: [
          SizedBox(
            child: Image.asset(
              'assets/images/brocast_transparent.png',
              height: boxWidth/2,
              width: boxWidth,
            ),
          ),
          Text(
            "TRANSPARENT",
            style: TextStyle(color: textColour, fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          Text(
            "Open Source software",
            style: TextStyle(color: textColour, fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          Text(
            "Transparency is an important aspect of Zwaar Developers, the creator op Brocast. All of the code can be seen on their github page for both the frontend (Android, IOS) and the backend",
            style: TextStyle(color: textColour, fontSize: 18),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 80),
        ],
      )
    );
  }
}