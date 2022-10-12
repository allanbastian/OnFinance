import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';

import '../res/colors.dart';
import '../res/sizes.dart';
import '../res/strings.dart';
import 'textview.dart';

class MainRowWidget extends StatelessWidget {
  final String iconData;
  final Color iconColor;
  final String mainText;
  final String sideText;
  final Color sideTextColor;

  const MainRowWidget({
    Key? key,
    required this.iconData,
    required this.iconColor,
    required this.mainText,
    required this.sideText,
    required this.sideTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: Sizes.s15),
      child: Row(
        children: [
          Container(
            width: Sizes.s40,
            height: Sizes.s40,
            decoration: BoxDecoration(
              color: CColors.buttonPurple,
              borderRadius: BorderRadius.circular(Sizes.s8),
            ),
            child: Center(
              child: Container(
                width: Sizes.s17,
                height: Sizes.s17,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(iconData),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: Sizes.s15),
          Expanded(
            child: TextView(
              text: mainText,
              size: FontSizes.s12,
              color: CColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextView(
            text: sideText,
            size: FontSizes.s12,
            color: sideTextColor,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(width: Sizes.s25),
        ],
      ),
    );
  }
}
