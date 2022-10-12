import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:onfinance/widgets/textview.dart';

import '../res/colors.dart';
import '../res/sizes.dart';

class FlatComponent extends StatelessWidget {
  final Color buttonColor;
  final String svgString;
  final String componentString;
  final String? percentString;
  final Color? percentColor;
  final Color? borderColor;

  const FlatComponent({
    Key? key,
    required this.buttonColor,
    required this.svgString,
    required this.componentString,
    this.percentString,
    this.percentColor,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Sizes.s170,
      height: Sizes.s40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.s8),
        border: Border.all(color: borderColor ?? CColors.purple),
        color: buttonColor,
      ),
      child: Row(
        children: [
          SizedBox(width: Sizes.s8),
          Container(
            width: Sizes.s25,
            height: Sizes.s25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: CColors.white,
              image: DecorationImage(
                image: Svg(svgString),
              ),
            ),
          ),
          SizedBox(width: Sizes.s8),
          TextView(
            text: componentString,
            color: CColors.white,
            fontWeight: FontWeight.bold,
            size: FontSizes.s12,
          ),
          SizedBox(width: Sizes.s4),
          percentString != null
              ? TextView(
                  text: percentString,
                  color: percentColor,
                  fontWeight: FontWeight.bold,
                  size: FontSizes.s12,
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
