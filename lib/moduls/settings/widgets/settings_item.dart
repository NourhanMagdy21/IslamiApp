import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef settingsOptionClicked = void Function();

class settingItem extends StatelessWidget {
  final String SettingOptionTitle, selectedOption;
  final settingsOptionClicked onOptionTaped;

  const settingItem(
      {super.key,
      required this.SettingOptionTitle,
      required this.selectedOption,
      required this.onOptionTaped});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          SettingOptionTitle,
          textAlign: TextAlign.start,
          style: theme.textTheme.bodyLarge,
        ),
        GestureDetector(
          onTap: onOptionTaped,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            width: mediaQuery.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: theme.colorScheme.onSecondary,
                width: 1.2,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(selectedOption),
                Icon(
                  Icons.arrow_downward_sharp,
                  color: theme.colorScheme.onSecondary,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
