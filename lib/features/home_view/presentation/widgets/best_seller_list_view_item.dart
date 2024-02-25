import 'package:bookly/features/home_view/data/models/BookModel.dart';
import 'package:bookly/features/home_view/presentation/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utlis/assets.dart';
import '../../../../core/utlis/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).pushNamed(
          'details_screen',
          extra: book
        );
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2 / 3,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: NetworkImage(
                            book.volumeInfo!.imageLinks!.thumbnail!),
                        fit: BoxFit.cover)),
              ),
            ),
            const SizedBox(width: 22),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .6,
                    child: Text(
                      book.volumeInfo?.title ?? 'N/V',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle18,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    book.volumeInfo?.authors?[0].toString() ?? 'N/V',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle14
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                       BookRating(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          ratingCount: book.volumeInfo?.ratingCount??0,
                          rating: book.volumeInfo?.averageRating??0,),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
