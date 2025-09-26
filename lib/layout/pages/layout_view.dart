import 'package:flutter/material.dart';
import 'package:islame/core/Theme/color_palette.dart';
import 'package:islame/core/constants/app_assets.dart';
import 'package:islame/layout/pages/hadith/hadith_view.dart';
import 'package:islame/layout/pages/quran/quran_view.dart';
import 'package:islame/layout/pages/radio/radio_view.dart';
import 'package:islame/layout/pages/tasbeh/tasbeh_view.dart';
import 'package:islame/layout/pages/time/time_view.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 0;
  List<Widget> screens = [
    QyranView(),
    HadithView(),
    TasbehView(),
    RadioView(),
    TimeView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorPalette.primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: ColorPalette.unselectedItemColor,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.quranIcon)),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: ImageIcon(AssetImage(AppAssets.quranIcon)),
            ),
            label: "Quran",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.hadisIcon)),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: ImageIcon(AssetImage(AppAssets.hadisIcon)),
            ),
            label: "Hadis",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.tasbehIcon)),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: ImageIcon(AssetImage(AppAssets.tasbehIcon)),
            ),
            label: "Tasbeh",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.radioIcon)),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: ImageIcon(AssetImage(AppAssets.radioIcon)),
            ),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.timeIcon)),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: ImageIcon(AssetImage(AppAssets.timeIcon)),
            ),
            label: "Time",
          ),
        ],
      ),
    );
  }
}
