import 'package:flutter/material.dart';
import 'package:paywall/src/widget/localization/app_localizations.dart';
import 'package:paywall/widgets/image/svg_image_and_text.dart';

class FeatureImagesGrid extends StatefulWidget {
  const FeatureImagesGrid({super.key});

  @override
  State<FeatureImagesGrid> createState() => _FeatureImagesGridState();
}

class _FeatureImagesGridState extends State<FeatureImagesGrid> {
  @override
  Widget build(BuildContext context) {
    var localization = AppLocalizations.of(context)!;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            SvgImageAndText(
              name: localization.fitness,
              path: MyImagesPath.fitness,
            ),
            SvgImageAndText(
              name: localization.visualization,
              path: MyImagesPath.visualisation,
            ),
          ],
        ),
        Column(
          children: [
            SvgImageAndText(
              name: localization.meditations,
              path: MyImagesPath.meditation,
            ),
            SvgImageAndText(
              name: localization.reading,
              path: MyImagesPath.reading,
            ),
          ],
        ),
        Column(
          children: [
            SvgImageAndText(
              name: localization.notes,
              path: MyImagesPath.notes,
            ),
            SvgImageAndText(
              name: localization.affirmations,
              path: MyImagesPath.affirmations,
            ),
          ],
        )
      ],
    );
  }
}

abstract class MyImagesPath {
  static const String fitness = 'assets/images/icons/fitness.svg';
  static const String visualisation = 'assets/images/icons/visualization.svg';
  static const String meditation = 'assets/images/icons/meditations.svg';
  static const String reading = 'assets/images/icons/reading.svg';
  static const String notes = 'assets/images/icons/notes.svg';
  static const String affirmations = 'assets/images/icons/affirmation.svg';
}
