import 'package:flutter/material.dart';

import '../../../../core/utlis/styles.dart';
import 'book_action.dart';
import 'book_rating.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
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
      ],
    );
  }
}
