import 'package:bookly/core/widgets/custom_loading-indicator.dart';
import 'package:bookly/features/home_view/data/models/BookModel.dart';
import 'package:bookly/features/home_view/presentation/widgets/book_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utlis/styles.dart';

class NewestListViewItem extends StatelessWidget {
  const NewestListViewItem({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).pushNamed('details_screen', extra: book);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: AspectRatio(
                aspectRatio: 2 / 3,
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  placeholder: (context, url) => const CustomLoadingIndicator(),
                  imageUrl: book.volumeInfo!.imageLinks!.thumbnail!,
                  errorWidget: (context, url, error) => const Icon(
                    Icons.error,
                    color: Colors.amber,
                  ),
                ),
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
                        ratingCount: book.volumeInfo?.ratingCount ?? 0,
                        rating: book.volumeInfo?.averageRating ?? 0,
                      ),
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
