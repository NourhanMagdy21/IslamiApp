import 'dart:async';
import 'package:flutter/material.dart';
import 'package:islamiapp/core/provider/app_provider.dart';
import 'package:islamiapp/core/theme/application_theme.dart';
import 'package:islamiapp/layout/home_layout.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const String routeName = "splash";

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeLayout.routeName);
    });
    var mediaQuery = MediaQuery.of(context).size;
    var appProvider = Provider.of<AppProvider>(context);
    return Scaffold(
      body: Image.asset(
        appProvider.isDark()?
         "assets/images/splash_dark.png"
        : "assets/images/Group 7.png",
        width: mediaQuery.width,
        height: mediaQuery.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
