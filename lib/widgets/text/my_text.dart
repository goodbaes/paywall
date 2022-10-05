import 'package:flutter/material.dart';

class MyText extends Text {
  const MyText(
    super.data, {
    super.key,
    super.style,
  });

  factory MyText.baseText(String data,
          {FontWeight? fontWeight, double? fontSize, Color? color}) =>
      MyText(
        data,
        style: TextStyle(
            fontFamily: MyFontFamily.montserat.name,
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight),
      );

  factory MyText.bold(String data, {Color? color, double? fontSize}) =>
      MyText.baseText(
        data,
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
      );

  factory MyText.semiBold(data, {color, double? fontSize}) => MyText.baseText(
        data,
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
      );
  factory MyText.medium(data, {color, double? fontSize}) => MyText.baseText(
        data,
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      );
}

enum MyFontFamily {
  montserat('Montserrat');

  final String name;

  const MyFontFamily(this.name);
}
