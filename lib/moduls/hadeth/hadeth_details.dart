import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/core/provider/app_provider.dart';
import 'package:islamiapp/core/theme/application_theme.dart';
import 'package:islamiapp/moduls/hadeth/hadeth_view.dart';
import 'package:islamiapp/moduls/quran/quran_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HadethDetails extends StatefulWidget {
  static const String routeName = "Hadeth_Details";

  HadethDetails({super.key});

  @override
  State<HadethDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<HadethDetails> {
  String content = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethContent;
    var mediaQuery = MediaQuery.of(context).size;
    var local = AppLocalizations.of(context)!;
    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          appProvider.isDark()
            ? "assets/images/bg.png"
            : "assets/images/background_light.png"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
          appBar: AppBar(
            title: Text(local.islami),
          ),
          body: Container(
            margin: const EdgeInsets.only(
                left: 30, right: 30, top: 30, bottom: 120),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            width: mediaQuery.width,
            height: mediaQuery.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: theme.colorScheme.primary.withOpacity(0.8)),
            child: Column(
              children: [
                Text(
                  args.title,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: theme.colorScheme.onSecondary
                  ),
                ),
                Divider(
                  indent: 30,
                  endIndent: 30,
                  thickness: 1.2,
                  height: 10,
                ),
                Expanded(
                  child: ListView(children: [
                    Text(
                      args.content,
                      style: theme.textTheme.bodySmall!.copyWith(
                          color: theme.colorScheme.onSecondary, height: 1.8),
                      textAlign: TextAlign.center,
                    ),
                  ]),
                ),
              ],
            ),
          )),
    );
  }
}
