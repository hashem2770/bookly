import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'custom_list_view_item.dart';
import 'feature_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(height: 18),
          FeatureBooksListView(),
        ],
      ),
    );
  }
}

