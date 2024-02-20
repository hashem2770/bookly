import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FadingText extends StatelessWidget {
  const FadingText({
    super.key,
    required  this.condition,
    required this.firstText,
    required this.secondText,
  }) ;

  final bool condition;
  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstCurve: Curves.ease,
      secondCurve: Curves.ease,
      firstChild: Center(
        child: Text(
          firstText,
          textAlign: TextAlign.center,
          style: GoogleFonts.lobster(fontSize: 22),
        ),
      ),
      secondChild: Center(
        child: Text(
          secondText,
          textAlign: TextAlign.center,
          style: GoogleFonts.lobster(fontSize: 22),
        ),
      ),
      crossFadeState:
      condition ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      duration: const Duration(seconds: 2),
    );
  }
}