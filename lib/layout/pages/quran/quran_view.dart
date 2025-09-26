import 'package:flutter/material.dart';
import 'package:islame/core/Theme/color_palette.dart';
import 'package:islame/core/constants/app_assets.dart';

class QyranView extends StatelessWidget {
  const QyranView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.quranBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppAssets.islamiLogo),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10,
              ),
              child: TextFormField(
                cursorColor: ColorPalette.primaryColor,
                decoration: InputDecoration(
                  hintText: " Sura Name",
                  hintStyle: theme.textTheme.bodyLarge,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ImageIcon(
                      AssetImage(AppAssets.quranIcon),
                      color: ColorPalette.primaryColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: ColorPalette.primaryColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: ColorPalette.primaryColor),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0, vertical: 5),
              child: Text(
                "Most Recently",
                style: theme.textTheme.bodyLarge,
              ),
            )
          ],
        ),
      ),
    );
  }
}
