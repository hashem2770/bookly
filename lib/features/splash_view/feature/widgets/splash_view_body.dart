import 'package:bookly/core/utlis/assets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  bool _welcomeText=false;
  changeWelcomeText()async{
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      _welcomeText=true;
    });
  }
  @override
  void initState() {
    changeWelcomeText();
    super.initState();
  }
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
        AnimatedCrossFade(
          firstChild: Center(
            child: Text(
              'Read Free Books',
              textAlign: TextAlign.center,
              style: GoogleFonts.lobster(fontSize: 22),
            ),
          ),
          secondChild: Center(
            child: Text(
              'Now..',
              textAlign: TextAlign.center,
              style: GoogleFonts.lobster(fontSize: 22),
            ),
          ),
          crossFadeState: _welcomeText?CrossFadeState.showSecond:CrossFadeState.showFirst,
          duration: const Duration(seconds: 2),
        ),
      ],
    );
  }
}
