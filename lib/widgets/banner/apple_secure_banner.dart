import 'package:flutter/material.dart';
import 'package:paywall/src/widget/localization/app_localizations.dart';
import 'package:paywall/widgets/text/my_text.dart';

class AppleSecureBanner extends StatelessWidget {
  const AppleSecureBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(21)),
        child: FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                appleSecureIcon,
              ),
              const SizedBox(
                width: 8,
              ),
              FittedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      child: MyText.semiBold(
                        AppLocalizations.of(context)!.secured_with_apple_store,
                        fontSize: 14,
                      ),
                    ),
                    FittedBox(
                      child: MyText.semiBold(
                        AppLocalizations.of(context)!.cancel_anytime,
                        fontSize: 14,
                        color: Colors.purple.shade100,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

const String appleSecureIcon = 'assets/images/icons/apple_secure_icon.png';
