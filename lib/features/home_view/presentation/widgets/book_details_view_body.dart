import 'package:bookly/features/home_view/presentation/widgets/book_rating.dart';
import 'package:bookly/features/home_view/presentation/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

import '../../../../core/utlis/styles.dart';
import 'book_action.dart';
import 'custom_details_view_app_bar.dart';
import 'similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 12),
        child: Column(
          children: [
            const CustomDetailsViewAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * .2),
              child: const CustomBookImage(),
            ),
            const SizedBox(height: 18),
            const Text(
              'The Jungle Book',
              style: Styles.textStyle30,
            ),
            const SizedBox(height: 8),
            Text(
              'R.K Rowling',
              style: Styles.textStyle20.copyWith(
                  fontStyle: FontStyle.italic, color: Colors.blueGrey),
            ),
            const SizedBox(height: 8),
            const BookRating(mainAxisAlignment: MainAxisAlignment.center),
            const SizedBox(height: 22),
            const BooksAction(),
            const SizedBox(height: 18),
            const Row(
              children: [
                Text(
                  'You can also see:',
                  style: Styles.textStyle16,
                ),
              ],
            ),
            const SizedBox(height: 8),
            const SimilarBooksListView(),
          ],
        ),
      ),
    );
  }
}
