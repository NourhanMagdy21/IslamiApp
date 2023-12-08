import 'package:flutter/material.dart';
import 'package:islamiapp/core/provider/app_provider.dart';
import 'package:islamiapp/core/theme/application_theme.dart';
import 'package:islamiapp/layout/home_layout.dart';
import 'package:islamiapp/moduls/hadeth/hadeth_details.dart';
import 'package:islamiapp/moduls/hadeth/hadeth_view.dart';
import 'package:islamiapp/moduls/quran/quran_details.dart';
import 'package:islamiapp/moduls/splash_screen/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(ChangeNotifierProvider(create: (context) =>AppProvider(),
  child:const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var appProvider= Provider.of<AppProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
      themeMode: appProvider.currentTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(appProvider.currentLocal),
      initialRoute: SplashScreen.routeName,

      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeLayout.routeName: (context) => HomeLayout(),
        QuranDetails.routeName: (context)=>  QuranDetails(),
        HadethDetails.routeName:(context)=> HadethDetails(),
      },
    );
  }
}
