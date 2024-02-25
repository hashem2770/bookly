import 'package:bookly/core/constant/colors.dart';
import 'package:bookly/core/utlis/service_locator.dart';
import 'package:bookly/features/home_view/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home_view/presentation/manager/feature_books_cubit/feature_books_cubit.dart';
import 'package:bookly/features/home_view/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/helper/app_router.dart';

void main() {
  setupServiceLocator();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white70, // Or any light color you prefer
        statusBarBrightness:
            Brightness.dark, // Use Brightness.dark for dark color
      ),
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeatureBooksCubit(getIt.get<HomeRepoImpl>())..fetchFeatureBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewestBooksCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.aclonicaTextTheme(ThemeData.dark().textTheme),
          scaffoldBackgroundColor: kPrimaryColor,
          brightness: Brightness.dark,
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: booklyRouter,
      ),
    );
  }
}
