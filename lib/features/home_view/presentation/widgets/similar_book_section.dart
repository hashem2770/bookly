
import 'package:flutter/material.dart';

import '../../../../core/utlis/styles.dart';
import 'similar_books_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 18),
        Row(
          children: [
            Text(
              'You can also see:',
              style: Styles.textStyle16,
            ),
          ],
        ),
        SizedBox(height: 8),
        SimilarBooksListView(),
      ],
    );
  }
}
