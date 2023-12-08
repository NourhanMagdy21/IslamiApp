import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamiapp/core/provider/app_provider.dart';
import 'package:islamiapp/moduls/settings/widgets/selected_option_widget.dart';
import 'package:islamiapp/moduls/settings/widgets/unselected_option_widget.dart';
import 'package:provider/provider.dart';

class LanguageBotton extends StatelessWidget {
  const LanguageBotton({super.key});

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
            onTap: (){
              appProvider.changeLanguage("en");
              Navigator.pop(context);
            },
            child: appProvider.currentLocal=="en"? SelectedOptionWidget(selectedTitle: "English"): UnSelectedOption(unselectedTitle: "English"),
          ),
          SizedBox(height: 20),
          GestureDetector(
              onTap: (){
                appProvider.changeLanguage("ar");
                Navigator.pop(context);
              },
              child:appProvider.currentLocal=="en"?  UnSelectedOption(unselectedTitle: "عربي"):SelectedOptionWidget(selectedTitle: "عربى")),
        ],
      ),
    );
  }
}
