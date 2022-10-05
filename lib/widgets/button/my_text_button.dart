import 'package:flutter/material.dart';
import 'package:paywall/widgets/text/my_text.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({required this.onTap, required this.text, super.key});
  final Function onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap.call(),
      child: MyText(text),
    );
  }
}
