import 'package:flutter/material.dart';

class MyHighlightContainer extends StatelessWidget {
  const MyHighlightContainer(
      {this.color,
      required this.child,
      this.borderRadius = 10,
      this.padding = const EdgeInsets.fromLTRB(30, 16, 30, 16),
      super.key});
  final Color? color;
  final Widget child;
  final double borderRadius;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }

  factory MyHighlightContainer.thin(
          {required child, color, double? borderRadius}) =>
      MyHighlightContainer(
        child: child,
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
        borderRadius: borderRadius ?? 10,
        color: color,
      );
}
