import 'package:flutter/material.dart';
import 'package:onfinance/res/colors.dart';
import 'package:onfinance/res/sizes.dart';

class AppTextField extends StatelessWidget {
  String? hintText;
  String? initialValue;
  Function(String)? onTextChanged;
  bool? passwordVisible = false;
  Widget? suffixIcon;
  Widget? prefixIcon;
  TextInputType? keyboardType;
  FormFieldValidator<String>? validator;
  TextEditingController? controller;
  int? maxLines;
  TextStyle? hintStyle;
  TextStyle? lableStyle;
  bool? enabled;
  bool? underLineBorder;
  InputBorder? inputBorder;
  TextAlign? textAlign = TextAlign.left;
  double? heightTextField;
  int? maxlength;
  bool expand = false;
  TextAlignVertical textAlignVertical = TextAlignVertical.center;

  AppTextField(
      {Key? key,
      this.keyboardType,
      this.hintText,
      this.onTextChanged,
      this.controller,
      this.passwordVisible = true,
      this.suffixIcon,
      this.initialValue,
      this.validator,
      this.prefixIcon,
      this.maxLines = 1,
      this.hintStyle,
      this.lableStyle,
      this.enabled,
      this.inputBorder,
      this.underLineBorder,
      this.heightTextField,
      this.textAlign = TextAlign.left,
      this.expand = false,
      this.maxlength = 999999999999999999,
      this.textAlignVertical = TextAlignVertical.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: enabled == true || enabled == null
          ? null
          : CColors.grey.withOpacity(0.5),
      height: heightTextField == null ? Sizes.s60 : heightTextField,
      child: TextFormField(
        enabled: enabled,
        maxLines: maxLines,
        validator: validator,
        controller: controller,
        keyboardType: keyboardType != null ? keyboardType : TextInputType.text,
        obscureText: !passwordVisible!,
        textAlign: textAlign!,
        onChanged: (value) {
          if (onTextChanged != null) onTextChanged!(value);
        },
        maxLength: maxlength,
        expands: expand,
        textAlignVertical: textAlignVertical,
        initialValue: initialValue,
        decoration: InputDecoration(
          enabledBorder: inputBorder ??
              UnderlineInputBorder(
                borderSide: BorderSide(color: CColors.border),
                borderRadius: BorderRadius.circular(10),
              ),
          border: underLineBorder == null ? inputBorder : InputBorder.none,
          hintText: hintText,
          hintStyle: hintStyle,
          counterText: '',
          contentPadding: EdgeInsets.only(
              left: Sizes.s10,
              right: Sizes.s10,
              top: prefixIcon == null ? 10 : Sizes.s10),
          // fillColor: CColors.greyLight,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          labelStyle: lableStyle,
        ),
      ),
    );
  }
}

class AppExpandedTextField extends StatelessWidget {
  String? hintText;
  String? initialValue;
  Function(String)? onTextChanged;
  bool? passwordVisible = false;
  Widget? suffixIcon;
  Widget? prefixIcon;
  TextInputType? keyboardType;
  FormFieldValidator<String>? validator;
  TextEditingController? controller;
  int? maxLines;
  TextStyle? hintStyle;
  TextStyle? lableStyle;
  bool? enabled;
  bool? underLineBorder;
  TextAlign? textAlign = TextAlign.left;
  double? heightTextField;
  Color? borderColor;

  AppExpandedTextField(
      {Key? key,
      this.keyboardType,
      this.hintText,
      this.onTextChanged,
      this.controller,
      this.passwordVisible = true,
      this.suffixIcon,
      this.initialValue,
      this.validator,
      this.prefixIcon,
      this.maxLines = 1,
      this.hintStyle,
      this.lableStyle,
      this.enabled,
      this.underLineBorder,
      this.heightTextField,
      this.borderColor = CColors.lightSliver,
      this.textAlign = TextAlign.left})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightTextField == null ? Sizes.s60 : heightTextField,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor ?? CColors.border)),
      child: TextFormField(
        enabled: enabled,
        maxLines: maxLines,
        validator: validator,
        controller: controller,
        expands: true,
        minLines: null,
        keyboardType: keyboardType != null ? keyboardType : TextInputType.text,
        obscureText: !passwordVisible!,
        textAlign: textAlign!,
        onChanged: (value) {
          if (onTextChanged != null) onTextChanged!(value);
        },
        initialValue: initialValue,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: CColors.border),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText,
          hintStyle: hintStyle,
          contentPadding: EdgeInsets.only(
              left: Sizes.s10,
              right: Sizes.s10,
              top: prefixIcon == null ? 0 : Sizes.s10),
          // fillColor: CColors.greyLight,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          labelStyle: lableStyle,
        ),
      ),
    );
  }
}
