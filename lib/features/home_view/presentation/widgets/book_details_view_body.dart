import 'package:bookly/features/home_view/presentation/widgets/book_rating.dart';
import 'package:bookly/features/home_view/presentation/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

import '../../../../core/utlis/styles.dart';
import 'custom_details_view_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
        child: Column(
          children: [
            const CustomDetailsViewAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * .2),
              child: const CustomBookImage(),
            ),
            const SizedBox(height: 20),
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
            const SizedBox(height: 14),
            const BookRating(spaceEvenly: false),
          ],
        ),
      ),
    );
  }
}
