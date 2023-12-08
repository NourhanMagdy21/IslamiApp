import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Column(
      children: [
        SizedBox(
          height: 150,
        ),
        Image.asset("assets/images/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png"),
        SizedBox(
          height: 50,
        ),
        Text(
          "إذاعة القرآن الكريم",
          style: theme.textTheme.bodyMedium,
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.skip_previous_sharp,
              color: theme.colorScheme.onPrimary,
              size: 50,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.play_arrow_rounded,
              color: theme.colorScheme.onPrimary,
              size: 80,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.skip_next_sharp,
              color: theme.colorScheme.onPrimary,
              size: 50,
            ),
          ],
        ),
      ],
    );
  }
}