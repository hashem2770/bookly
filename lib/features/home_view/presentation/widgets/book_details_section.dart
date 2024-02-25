import 'package:flutter/material.dart';

import '../../../../core/utlis/styles.dart';
import '../../data/models/BookModel.dart';
import 'book_action.dart';
import 'book_rating.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * .2),
          child: CustomBookImage(
              bookImage: bookModel.volumeInfo!.imageLinks!.thumbnail!),
        ),
        const SizedBox(height: 18),
        Text(
          bookModel.volumeInfo?.title ?? 'N/V',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle20,
        ),
        const SizedBox(height: 8),
        Text(
          bookModel.volumeInfo?.authors?[0] ?? 'N/V',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle20
              .copyWith(fontStyle: FontStyle.italic, color: Colors.blueGrey),
        ),
        const SizedBox(height: 8),
        BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
            rating: bookModel.volumeInfo?.averageRating?.round() ?? 0,
            ratingCount: bookModel.volumeInfo?.ratingCount?.round() ?? 0),
        const SizedBox(height: 22),
        const BooksAction(),
      ],
    );
  }
}
