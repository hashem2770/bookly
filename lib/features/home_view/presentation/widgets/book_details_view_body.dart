import 'package:flutter/material.dart';
import 'book_details_section.dart';
import 'custom_details_view_app_bar.dart';
import 'similar_book_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 12),
              child: Column(
                children: [
                  CustomDetailsViewAppBar(),
                  BookDetailsSection(),
                  Expanded(
                    child: SimilarBooksSection(),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
