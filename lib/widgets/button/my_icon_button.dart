import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({required this.onTap, required this.iconData, super.key});
  final Function onTap;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        iconData,
        color: Colors.black38,
      ),
      onPressed: () => onTap.call(),
    );
  }
}
