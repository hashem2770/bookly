import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FadingText extends StatefulWidget {
  const FadingText({
    super.key,
    required  this.welcomeText,
    required this.firstText,
    required this.secondText,
  }) ;

  final bool welcomeText;
  final String firstText;
  final String secondText;

  @override
  State<FadingText> createState() => _FadingTextState();
}

class _FadingTextState extends State<FadingText> {
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstCurve: Curves.ease,
      secondCurve: Curves.ease,
      firstChild: Center(
        child: Text(
          widget.firstText,
          textAlign: TextAlign.center,
          style: GoogleFonts.lobster(fontSize: 22),
        ),
      ),
      secondChild: Center(
        child: Text(
          widget.secondText,
          textAlign: TextAlign.center,
          style: GoogleFonts.lobster(fontSize: 22),
        ),
      ),
      crossFadeState:
      widget.welcomeText ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      duration: const Duration(seconds: 2),
    );
  }
}