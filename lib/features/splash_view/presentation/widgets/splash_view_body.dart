import 'package:flutter/material.dart';
import 'package:bookly/core/utlis/assets.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'fading_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  bool _welcomeText = false;

  Future<void> changeWelcomeText() async {
    await Future.delayed(const Duration(seconds: 4));
    _welcomeText = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 2));
    navigateToHome();
  }

  navigateToHome() {
    GoRouter.of(context).pushReplacementNamed('home_screen');
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
        FadingText(
          firstText: 'Read Free Books',
          secondText: 'Now..',
          condition: _welcomeText,
        ),
      ],
    );
  }
}
