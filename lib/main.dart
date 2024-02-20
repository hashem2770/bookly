import 'package:bookly/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/helper/app_router.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white70, // Or any light color you prefer
        statusBarBrightness: Brightness.dark, // Use Brightness.dark for dark color
      ),
    );
    return MaterialApp.router(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: booklyRouter,
    );
  }
}
