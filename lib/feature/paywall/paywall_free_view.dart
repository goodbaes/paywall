import 'package:flutter/material.dart';
import 'package:paywall/src/widget/localization/app_localizations.dart';
import 'package:paywall/theme/color.dart';
import 'package:paywall/widgets/banner/apple_secure_banner.dart';
import 'package:paywall/widgets/banner/number_banner.dart';
import 'package:paywall/widgets/container/my_highlight_container.dart';
import 'package:paywall/widgets/paywall_base/paywall_base.dart';
import 'package:paywall/widgets/text/my_text.dart';

class PayWallFreeView extends StatelessWidget {
  const PayWallFreeView({super.key});

  @override
  Widget build(BuildContext context) {
    var localization = AppLocalizations.of(context)!;
    return PayWallViewBase(
        buttonText: AppLocalizations.of(context)!.try_days_for_free,
        onButtonTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              child: FittedBox(
                child: Column(
                  children: [
                    MyText.bold(
                      localization.try_premium.toUpperCase(),
                      fontSize: 36,
                      color: Colors.white,
                    ),
                    MyText.bold(
                      '${localization.free}!'.toUpperCase(),
                      fontSize: 36,
                      color: MyColors.accentColor,
                    ),
                    MyHighlightContainer.thin(
                      borderRadius: 20,
                      color: MyColors.accentColor,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: FittedBox(
                          child: MyText.bold(
                            localization.limited_offer,
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0),
                child: NumberBanner(),
              ),
            ),
            MyHighlightContainer(
                child: Column(
              children: [
                Column(
                  children: [
                    FittedBox(
                      child: Row(
                        children: [
                          MyText.bold(
                            '3 ',
                            fontSize: 30,
                          ),
                          MyText.bold(
                            '${localization.days} ',
                            fontSize: 30,
                          ),
                          MyText.bold(
                            localization.free,
                            fontSize: 30,
                            color: MyColors.accentColor,
                          )
                        ],
                      ),
                    ),
                    MyText(localization.after),
                    FittedBox(
                      child: Row(
                        children: [
                          MyText.bold(
                            '2.91 USD',
                            fontSize: 20,
                            color: MyColors.accentColor,
                          ),
                          MyText.bold(
                            localization.month,
                            fontSize: 16,
                          )
                        ],
                      ),
                    ),
                    FittedBox(
                      child: MyText.bold(
                        localization.billed_every_12_months,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const AppleSecureBanner()
              ],
            ))
          ],
        ));
  }
}
