import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:paywall/widgets/text/my_text.dart';

class SvgImageAndText extends StatelessWidget {
  const SvgImageAndText({required this.path, required this.name, super.key});
  final String path, name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image(
            width: 80,
            height: 80,
            image: Svg(path),
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 4,
          ),
          MyText.medium(
            name,
            fontSize: 30,
          )
        ],
      ),
    );
  }
}
