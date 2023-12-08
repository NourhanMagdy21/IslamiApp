import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuranItem extends StatelessWidget {
  final String suraName;
  final String suraNumber;
  const QuranItem({super.key, required this.suraName, required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return  Row(
      children: [
        Expanded(
          child: Text("$suraNumber",
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium),
        ),
        Container(
          width: 2.2,
          height: 45,
          color: theme.colorScheme.onPrimary,
        ),
        Expanded(
            child: Text(
              "$suraName",
              style: theme.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            )),
      ],
    );
  }
}
