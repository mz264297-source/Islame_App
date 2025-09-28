import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:islame/core/constants/app_assets.dart';
import 'package:islame/core/constants/app_routes_name.dart';
import 'package:islame/models/sura_data_model.dart';

class QuranCardwidget extends StatelessWidget {
  final SuraDataModel suraDataModel;

  const QuranCardwidget({super.key, required this.suraDataModel});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Bounceable(
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRoutesName.QuranDatailsView,
          arguments: suraDataModel,
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.SuraNumberIcn),
                ),
              ),
            ),
            SizedBox(width: 24.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  suraDataModel.suraNameEN,
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  " ${suraDataModel.suraAyahCount}  Verses ",
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              suraDataModel.suraNameAR,
              style: theme.textTheme.titleLarge?.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
