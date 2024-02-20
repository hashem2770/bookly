import 'package:bookly/features/home_view/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:bookly/core/utlis/assets.dart';
import 'package:go_router/go_router.dart';
import 'fading_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  bool _welcomeText = false;

  Future<void> changeWelcomeText() async {
    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      _welcomeText = true;
    });

    navGo();


  }

navGo(){
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
          welcomeText: _welcomeText,
          firstText: 'Read Free Book',
          secondText: 'Now..',
        ),
      ],
    );
  }
}


