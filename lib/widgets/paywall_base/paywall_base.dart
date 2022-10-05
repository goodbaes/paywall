import 'package:flutter/material.dart';
import 'package:paywall/src/widget/localization/app_localizations.dart';
import 'package:paywall/widgets/button/my_button.dart';
import 'package:paywall/widgets/button/my_icon_button.dart';
import 'package:paywall/widgets/button/my_text_button.dart';

class PayWallViewBase extends StatelessWidget {
  const PayWallViewBase(
      {required this.buttonText,
      required this.onButtonTap,
      required this.child,
      this.actions = const <Widget>[SizedBox()],
      super.key});

  final Function onButtonTap;
  final String buttonText;
  final List<Widget> actions;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            backgroundSvg,
            fit: BoxFit.cover,
          ),
          Center(
              child: SizedBox(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        MyIconButton(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          iconData: Icons.close,
                        ),
                        Row(
                          children: actions,
                        )
                      ]),
                ),
                const SizedBox(
                  height: 16,
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: child,
                )),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      MyButton(
                        onTap: () => onButtonTap.call(),
                        text: buttonText,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MyTextButton(
                              onTap: () {},
                              text:
                                  AppLocalizations.of(context)!.privacy_policy),
                          MyTextButton(
                              onTap: () {},
                              text: AppLocalizations.of(context)!.term_of_use)
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    ));
  }
}

const backgroundSvg = 'assets/images/background/background.png';
