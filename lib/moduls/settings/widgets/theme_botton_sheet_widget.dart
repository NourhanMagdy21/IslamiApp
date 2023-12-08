import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamiapp/core/provider/app_provider.dart';
import 'package:islamiapp/moduls/settings/widgets/selected_option_widget.dart';
import 'package:islamiapp/moduls/settings/widgets/unselected_option_widget.dart';
import 'package:provider/provider.dart';

class ThemeBottonSheetWidget extends StatelessWidget {
  const ThemeBottonSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      decoration: BoxDecoration(
        color: theme.primaryColor.withOpacity(0.8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              appProvider.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: appProvider.isDark()
                ? SelectedOptionWidget(selectedTitle: "Dark")
                : UnSelectedOption(unselectedTitle: "Dark"),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              appProvider.changeTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: appProvider.isDark()
                ? UnSelectedOption(unselectedTitle: "Light")
                : SelectedOptionWidget(selectedTitle: "Light"),

          ),
        ],
      ),
    );
  }
}
