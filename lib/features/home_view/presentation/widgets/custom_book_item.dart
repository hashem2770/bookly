import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.bookImage});

  final String bookImage;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: CachedNetworkImage(
          imageUrl: bookImage,
          fit: BoxFit.cover,
          errorWidget: (context, url, error) => const Icon(
            Icons.error,
            color: Colors.orange,
          ),
        ),
      ),
    );
  }
}
