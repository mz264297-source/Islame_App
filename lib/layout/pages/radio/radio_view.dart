import 'package:flutter/material.dart';
import 'package:islame/core/constants/app_assets.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.radioBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(children: [Image.asset(AppAssets.islamiLogo)]),
      ),
    );
  }
}
