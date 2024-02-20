import 'package:bookly/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'feature_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomAppBar(),
            SizedBox(height: 18),
            FeatureBooksListView(),
            SizedBox(height: 34),
            Text('Best Seller',style: Styles.textStyle20bold,)
          ],
        ),
      ),
    );
  }
}

