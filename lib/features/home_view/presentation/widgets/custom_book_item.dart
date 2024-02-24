
import 'package:flutter/material.dart';

import '../../../../core/utlis/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
                image: AssetImage(AssetsData.book), fit: BoxFit.contain)),
      ),
    );
  }
}
