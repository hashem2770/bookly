import 'package:bookly/features/home_view/data/models/BookModel.dart';
import 'package:flutter/material.dart';

import '../widgets/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BookDetailsViewBody(book: book),
    );
  }
}
