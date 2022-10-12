import 'package:flutter/material.dart';

class TextView extends StatelessWidget {
  @required
  String? text;
  Color? color;
  bool? isbold;
  double? size;
  TextAlign? textAlign;
  String? fontfamily;
  FontWeight? fontWeight;
  bool underLine = false;
  int? maxLines;

  TextView({
    Key? key,
    this.text,
    this.color,
    this.isbold,
    this.size,
    this.textAlign,
    this.fontWeight,
    this.underLine = false,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!.toString(),
      textAlign: textAlign != null ? textAlign : null,
      maxLines: maxLines,
      style: TextStyle(
        color: color != null ? color : null,
        fontSize: size != null ? size : null,
        decoration: underLine ? TextDecoration.underline : TextDecoration.none,
        fontWeight: isbold == true ? FontWeight.bold : fontWeight,
        //fontFamily: fontfamily != null ? fontfamily : null
      ),
    );
  }
}
