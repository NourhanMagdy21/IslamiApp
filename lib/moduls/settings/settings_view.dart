import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamiapp/core/provider/app_provider.dart';
import 'package:islamiapp/moduls/settings/widgets/language_botton_widget.dart';
import 'package:islamiapp/moduls/settings/widgets/settings_item.dart';
import 'package:islamiapp/moduls/settings/widgets/theme_botton_sheet_widget.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {


    var appProvider = Provider.of<AppProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Column(children: [
        settingItem(
          SettingOptionTitle: "Language",
          selectedOption: "English",
          onOptionTaped: () {
            showLanguageBottomSheet(context);
          },
        ),
        SizedBox(
          height: 20,
        ),
        settingItem(

          SettingOptionTitle: "Theme Mode",
          selectedOption: appProvider.isDark()? "Dark":"Light",
          onOptionTaped: () {
            showThemeBottomSheet(context);
          },
        ),
      ]),
    );
  }
}

void showLanguageBottomSheet(context) {
  showModalBottomSheet(context: context, builder: (context) => LanguageBotton());
}

void showThemeBottomSheet(context) {
  showModalBottomSheet(context: context, builder: (context) =>ThemeBottonSheetWidget());
}

