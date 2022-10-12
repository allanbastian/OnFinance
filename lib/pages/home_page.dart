import 'package:flutter/material.dart';

import '../res/colors.dart';
import '../res/sizes.dart';
import '../res/strings.dart';
import '../widgets/flat_component.dart';
import '../widgets/main_row_widget.dart';
import '../widgets/textview.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CColors.scaffoldColor,
      bottomNavigationBar: BottomAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 9, right: 9),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.s12),
            color: CColors.columnColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: Sizes.s220,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/info_img.png'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  Positioned(
                    bottom: Sizes.s80,
                    left: Sizes.s16,
                    right: Sizes.s30,
                    child: SizedBox(
                      width: Sizes.s300,
                      height: MediaQuery.of(context).size.height / 5,
                      child: Row(
                        children: [
                          Expanded(
                            child: TextView(
                              text: SStrings.environment,
                              size: Sizes.s14,
                              color: CColors.white,
                              underLine: true,
                            ),
                          ),
                          const Image(
                            image: AssetImage('assets/images/bookmark.png'),
                          ),
                          SizedBox(width: Sizes.s30),
                          const Image(
                            image: AssetImage('assets/images/forward.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: Sizes.s30,
                    left: Sizes.s16,
                    right: Sizes.s30,
                    child: SizedBox(
                      width: Sizes.s320,
                      child: TextView(
                        text: SStrings.img_strng,
                        color: CColors.white,
                        fontWeight: FontWeight.bold,
                        size: Sizes.s20,
                        maxLines: 3,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Sizes.s15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FlatComponent(
                    buttonColor: CColors.purple,
                    svgString: 'assets/images/tata.svg',
                    componentString: SStrings.abbotIndia,
                    percentString: SStrings.abbotPercent,
                    percentColor: CColors.green,
                  ),
                  SizedBox(width: Sizes.s10),
                  const FlatComponent(
                    buttonColor: Colors.transparent,
                    svgString: 'assets/images/nifty2.svg',
                    componentString: SStrings.nifty,
                  ),
                ],
              ),
              SizedBox(height: Sizes.s30),
              Padding(
                padding: EdgeInsets.all(Sizes.s15),
                child: RichText(
                  text: TextSpan(
                    text: SStrings.timeAgo,
                    style: TextStyle(
                      color: CColors.subTextGray,
                      fontSize: FontSizes.s12,
                    ),
                    children: [
                      TextSpan(
                        text: SStrings.mainText,
                        style: TextStyle(
                          color: CColors.mainTextGray,
                          fontSize: FontSizes.s12,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: Sizes.s25),
              const MainRowWidget(
                iconData: 'assets/images/stock.png',
                iconColor: CColors.buttonYellow,
                mainText: SStrings.projectText,
                sideText: SStrings.medium,
                sideTextColor: CColors.buttonYellow,
              ),
              SizedBox(height: Sizes.s10),
              const MainRowWidget(
                iconData: 'assets/images/stock.png',
                iconColor: CColors.buttonRed,
                mainText: SStrings.investor,
                sideText: SStrings.bullish,
                sideTextColor: CColors.lightGreen,
              ),
              SizedBox(height: Sizes.s10),
              const MainRowWidget(
                iconData: 'assets/images/market.png',
                iconColor: CColors.lightGreen,
                mainText: SStrings.market,
                sideText: SStrings.marketPercent,
                sideTextColor: CColors.lightGreen,
              ),
              SizedBox(height: Sizes.s10),
              const MainRowWidget(
                iconData: 'assets/images/job.png',
                iconColor: CColors.lightBlue,
                mainText: SStrings.portfolio,
                sideText: SStrings.portfolioPercent,
                sideTextColor: CColors.lightBlue,
              ),
              SizedBox(height: Sizes.s10),
              const MainRowWidget(
                iconData: 'assets/images/job.png',
                iconColor: CColors.buttonPink,
                mainText: SStrings.sentiment,
                sideText: SStrings.excellent,
                sideTextColor: CColors.lightGreen,
              ),
              SizedBox(height: Sizes.s20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: Sizes.s20),
                padding: EdgeInsets.all(Sizes.s10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Sizes.s12),
                  color: CColors.buttonLightPurple,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextView(
                      text: SStrings.analyze,
                      color: CColors.white,
                      fontWeight: FontWeight.bold,
                      size: FontSizes.s14,
                    ),
                    SizedBox(width: Sizes.s10),
                    Icon(
                      Icons.arrow_forward,
                      size: Sizes.s15,
                      color: CColors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
