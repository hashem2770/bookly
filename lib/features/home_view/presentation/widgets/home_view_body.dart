import 'package:bookly/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'feature_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomAppBar(),
                  SizedBox(height: 18),
                  FeatureBooksListView(),
                  SizedBox(height: 34),
                  Text(
                    'Best Seller',
                    style: Styles.textStyle20bold,
                  ),
                  SizedBox(height: 4),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: BestSellerListView(),
          ),
        ],
      ),
    );
  }
}

