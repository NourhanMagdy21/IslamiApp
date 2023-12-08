import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/core/provider/app_provider.dart';
import 'package:islamiapp/core/theme/application_theme.dart';
import 'package:islamiapp/moduls/quran/quran_view.dart';
import 'package:provider/provider.dart';

class QuranDetails extends StatefulWidget {
  static const String routeName = "Quran_Details";

  QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  String content = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    var mediaQuery = MediaQuery.of(context).size;
    if (content.isEmpty) readFiles(args.suraNumber);
    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(appProvider.isDark()
            ? "assets/images/bg.png"
            : "assets/images/background_light.png"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("اسلامي"),
        ),
        body: Container(
          margin:
              const EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 120),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          width: mediaQuery.width,
          height: mediaQuery.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: theme.colorScheme.primary.withOpacity(0.8)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سوره ${args.suraName}",
                    style: theme.textTheme.bodyLarge!
                        .copyWith(color: theme.colorScheme.onSecondary),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Icon(Icons.play_circle,
                      size: 32, color: theme.colorScheme.onSecondary),
                ],
              ),
              Divider(
                indent: 30,
                endIndent: 30,
                thickness: 1.2,
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: allVerses.length,
                  itemBuilder: (context, index) => Text(
                      "(${index + 1}) ${allVerses[index]}",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall!.copyWith(
                          color: theme.colorScheme.onSecondary, height: 2)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  readFiles(String index) async {
    String text = await rootBundle.loadString("assets/files/$index.txt");
    content = text;
    setState(() {
      allVerses = content.split("\n");
    });
    print(text);
  }
}
