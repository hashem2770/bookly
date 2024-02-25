import 'package:bookly/features/home_view/data/models/BookModel.dart';
import 'package:flutter/material.dart';
import 'book_details_section.dart';
import 'custom_details_view_app_bar.dart';
import 'similar_book_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 12),
              child: Column(
                children: [
                  const CustomDetailsViewAppBar(),
                  BookDetailsSection(bookModel: book, ),
                  const Expanded(
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
