import 'package:bookly/features/home_view/presentation/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import '../../../../core/utlis/assets.dart';
import '../../../../core/utlis/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2 / 3,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                      image: AssetImage(AssetsData.book), fit: BoxFit.contain)),
            ),
          ),
          const SizedBox(width: 22),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .6,
                  child: const Text(
                    'Harry Potter and the Goblet Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle18,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'J.K Rowling',
                  style: Styles.textStyle14,
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$19.00',
                      style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const BookRating(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
