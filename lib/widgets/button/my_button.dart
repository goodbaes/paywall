import 'package:flutter/material.dart';
import 'package:paywall/theme/color.dart';
import 'package:paywall/widgets/text/my_text.dart';

class MyButton extends StatelessWidget {
  const MyButton({required this.text, required this.onTap, super.key});
  final String text;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => onTap.call()),
      child: SizedBox(
        width: double.infinity,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: MyColors.accentColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.purple.shade300, width: 4),
          ),
          child: MyText.bold(
            text,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
