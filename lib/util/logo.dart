
import 'package:flutter/material.dart';

Widget logo(double maxWidth) {
  double logoWidth = 600;
  double logoHeight = 150;
  double sizeOfFont = 30;
  if (maxWidth < 800) {
    logoWidth = (maxWidth/5)*4;
    logoHeight = maxWidth/6;
    sizeOfFont = 10;
  }
  return Column(
      children: [
        SizedBox(
          height: logoHeight,
          width: logoWidth-50,
          child: const Image(
            image: AssetImage("assets/images/Zwaar.png"),
          ),
        ),
        Text(
            "       Developers",
            style: TextStyle(color: const Color(0xff949494), fontSize: sizeOfFont, fontWeight: FontWeight.bold)
        )
      ]
  );
}
