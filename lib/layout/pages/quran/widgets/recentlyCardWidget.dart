import 'package:flutter/material.dart';
import 'package:islame/core/Theme/color_palette.dart';
import 'package:islame/core/constants/app_assets.dart';
import 'package:islame/models/sura_data_model.dart';

class Recentlycardwidget extends StatelessWidget {
  final SuraDataModel suraDataModel;

  const Recentlycardwidget({super.key, required this.suraDataModel});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.all(8.0),
      width: 280.0,
      decoration: BoxDecoration(
        color: ColorPalette.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            spacing: 15,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                suraDataModel.suraNameEN,
                style: theme.textTheme.headlineSmall,
              ),
              Text(
                suraDataModel.suraNameAR,
                style: theme.textTheme.headlineSmall,
              ),
              Text(
                "${suraDataModel.suraAyahCount} ,Verses",
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
          Expanded(child: Image.asset(AppAssets.quranCardImage)),
        ],
      ),
    );
  }
}
