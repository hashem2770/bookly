
import 'package:flutter/material.dart';

import '../../../../core/utlis/assets.dart';

class FeatureListViewItem extends StatelessWidget {
  const FeatureListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(14),
            image: const DecorationImage(
                image: AssetImage(AssetsData.book), fit: BoxFit.contain)),
      ),
    );
  }
}
