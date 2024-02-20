import 'package:bookly/core/constant/colors.dart';
import 'package:flutter/material.dart';

import 'core/helper/app_router.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(scaffoldBackgroundColor: kPrimaryColor),
      debugShowCheckedModeBanner: false,
      routerConfig: booklyRouter,
    );
  }
}
