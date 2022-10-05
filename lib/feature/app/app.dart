import 'package:flutter/material.dart';
import 'package:paywall/feature/paywall/paywall_free_view.dart';
import 'package:paywall/feature/paywall/paywall_month_view.dart';
import 'package:paywall/main.dart';
import 'package:paywall/src/widget/localization/app_localizations.dart';
import 'package:paywall/widgets/button/my_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyButton(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const PayWallMonthView()))),
              text: 'month demo',
            ),
            MyButton(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const PayWallFreeView()))),
              text: 'try free demo',
            ),
            MyButton(
              text:
                  'change locale , current: ${AppLocalizations.of(context)!.localeName}',
              onTap: () =>
                  context.findAncestorStateOfType<MyAppState>()!.changeLocale(),
            )
          ],
        ),
      ),
    );
  }
}
