import 'package:flutter/material.dart';
import 'package:islamiapp/core/provider/app_provider.dart';
import 'package:islamiapp/moduls/hadeth/hadeth_view.dart';
import 'package:islamiapp/moduls/quran/quran_view.dart';
import 'package:islamiapp/moduls/radio/radio_view.dart';
import 'package:islamiapp/moduls/settings/settings_view.dart';
import 'package:islamiapp/moduls/tasbeh/tasbeh_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeLayout extends StatefulWidget {
  HomeLayout({super.key});

  static const String routeName = "home_layout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screens =  [
    QuranView(),
    HadethView(),
    TasbihView(),
    RadioView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    var local = AppLocalizations.of(context)!;
    var appProvider = Provider.of<AppProvider>(context);

    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
           appProvider.isDark()?
           "assets/images/background_dark.png"
            : "assets/images/background.png"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(local.islami),
        ),
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          //selectedItemColor: Colors.white,
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,

          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/quran_icon.png")),
                label: local.quran,
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage("assets/images/quran-quran-svgrepo-com.png")),
                label: local.hadeth),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                label: local.sebha),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio.png")),
                label: local.radio),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: local.setting)
          ],
        ),
      ),
    );
  }
}
