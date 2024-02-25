import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomBookImage(bookImage: 'https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png'),
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemCount: 5,
      ),
    );
  }
}
