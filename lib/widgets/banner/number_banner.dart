import 'package:flutter/material.dart';
import 'package:paywall/theme/color.dart';
import 'package:paywall/widgets/container/my_highlight_container.dart';
import 'package:paywall/widgets/text/my_text.dart';

class NumberBanner extends StatelessWidget {
  const NumberBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          MyHighlightContainer.thin(
            child: MyText.bold(
              '0',
              fontSize: 64,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          MyHighlightContainer.thin(
            child: FittedBox(
              child: MyText.bold(
                '4',
                fontSize: 64,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          FittedBox(
            child: MyText.bold(
              ':',
              fontSize: 64,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          MyHighlightContainer.thin(
            child: FittedBox(
              child: MyText.bold(
                '5',
                fontSize: 64,
                color: MyColors.accentColor,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          MyHighlightContainer.thin(
            child: FittedBox(
              child: MyText.bold(
                '9',
                fontSize: 64,
                color: MyColors.accentColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
