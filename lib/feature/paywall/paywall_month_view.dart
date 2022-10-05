import 'package:flutter/material.dart';
import 'package:paywall/src/widget/localization/app_localizations.dart';
import 'package:paywall/theme/color.dart';
import 'package:paywall/widgets/banner/apple_secure_banner.dart';
import 'package:paywall/widgets/button/my_text_button.dart';
import 'package:paywall/widgets/container/my_highlight_container.dart';
import 'package:paywall/widgets/image/feature_images_grid.dart';
import 'package:paywall/widgets/paywall_base/paywall_base.dart';
import 'package:paywall/widgets/text/my_text.dart';

class PayWallMonthView extends StatelessWidget {
  const PayWallMonthView({super.key});

  @override
  Widget build(BuildContext context) {
    var localization = AppLocalizations.of(context)!;
    return PayWallViewBase(
      actions: [MyTextButton(onTap: () {}, text: localization.reading)],
      buttonText: AppLocalizations.of(context)!.try_days_for_free,
      onButtonTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            child: FittedBox(
              child: Column(
                children: [
                  FittedBox(
                    child: MyText.bold(
                      localization.unlock_all_features.toUpperCase(),
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  FittedBox(
                    child: MyText.medium(
                      localization.build_your_perfect_morning_routine,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 24.0),
            child: FittedBox(child: FeatureImagesGrid()),
          ),
          MyHighlightContainer(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText.bold(
                    '2.91 USD / ',
                    fontSize: 30,
                    color: MyColors.accentColor,
                  ),
                  MyText.bold(
                    localization.month,
                    fontSize: 24,
                    color: MyColors.accentColor,
                  ),
                ],
              ),
              MyText.bold(
                localization.billed_every_12_months,
                fontSize: 18,
              ),
              const SizedBox(
                height: 8,
              ),
              const AppleSecureBanner()
            ],
          )),
        ],
      ),
    );
  }
}
