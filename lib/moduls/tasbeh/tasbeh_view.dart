import 'package:flutter/material.dart';
import 'package:islamiapp/core/provider/app_provider.dart';
import 'package:provider/provider.dart';

class TasbihView extends StatefulWidget {
   TasbihView({super.key});

  @override
  State<TasbihView> createState() => _TasbihViewState();
}

class _TasbihViewState extends State<TasbihView> {
  double angle = 0;
  int counter = 0;
  List<String> tasbih = [
    "سبحان الله",
    "الحمدلله",
    "لا اله الا الله",
    "الله اكبر",
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          GestureDetector(
            onTap: onImageClicked,
            child: Transform.rotate(
              angle: angle,
              child: Image(
                image: AssetImage(
                  appProvider.isDark()
                      ? "assets/images/body_sebha_logo.png"
                      : "assets/images/body_sebha_logo.png",
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            "عدد التسبيحات",
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 23),
            height: 81,
            width: 69,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: theme.primaryColor.withOpacity(0.6),
            ),
            child: Text(
              "$counter",
              style: theme.textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 17, right: 7, top: 5, bottom: 5),
            height: 51,
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: theme.colorScheme.onPrimary,
            ),
            child: Text(
              tasbih[currentIndex],
              style: TextStyle(
                color: theme.colorScheme.onBackground,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  void onImageClicked() {
    angle += 3;
    counter++;
    if (counter > 30) {
      counter = 0;
      currentIndex++;
      currentIndex = currentIndex % 4;
    }
    setState(() {});
  }
}



