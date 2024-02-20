import 'package:bookly/core/utlis/assets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 18,
        ),
        Text(
          'Read Free Books',
          textAlign: TextAlign.center,
          style: GoogleFonts.lobster(fontSize: 22),
        ),
      ],
    );
  }
}
