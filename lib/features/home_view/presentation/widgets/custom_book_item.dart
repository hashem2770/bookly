import 'package:bookly/features/home_view/data/models/BookModel.dart';
import 'package:flutter/material.dart';

import '../../../../core/utlis/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.bookImage});

  final String bookImage;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
                image: NetworkImage(bookImage),
                fit: BoxFit.cover)),
      ),
    );
  }
}
