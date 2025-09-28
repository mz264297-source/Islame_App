import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame/core/Theme/color_palette.dart';
import 'package:islame/core/constants/app_assets.dart';
import 'package:islame/models/sura_data_model.dart';

class QuranDetailsView extends StatefulWidget {
  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var data = ModalRoute.of(context)!.settings.arguments as SuraDataModel;

    if (verses.isEmpty) {
      LoadDataFromAssets(data.suraNumber.toString());
    }

    return Scaffold(
      appBar: AppBar(title: Text(data.suraNameEN)),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AppAssets.leftCornerImg, height: 85, width: 85),
                    Image.asset(
                      AppAssets.rightCornerImg,
                      height: 85,
                      width: 85,
                    ),
                  ],
                ),
              ),
              Image.asset(AppAssets.buttomImage),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 10.0),
              Text(
                data.suraNameAR,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge?.copyWith(
                  color: ColorPalette.primaryColor,
                ),
              ),
              SizedBox(height: 30.0),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  itemBuilder: (context, index) {
                    return Text(
                      "${verses[index]}{${index + 1}}",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleLarge?.copyWith(
                        color: ColorPalette.primaryColor,
                        height: 1.8,
                      ),
                    );
                  },
                  itemCount: verses.length,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<String> verses = [];

  Future<void> LoadDataFromAssets(String suraNumber) async {
    String content = await rootBundle.loadString(
      "assets/files/$suraNumber.txt",
    );
    verses = content.split("\n");
    setState(() {});
    log(content);
    log(verses.length.toString());
  }
}
