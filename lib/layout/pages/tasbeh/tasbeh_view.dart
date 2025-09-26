import 'package:flutter/material.dart';
import 'package:islame/core/constants/app_assets.dart';

class TasbehView extends StatelessWidget {
  const TasbehView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.tasbehBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(children: [Image.asset(AppAssets.islamiLogo)]),
      ),
    );
  }
}
