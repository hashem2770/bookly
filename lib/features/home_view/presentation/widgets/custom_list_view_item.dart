
import 'package:flutter/material.dart';

import '../../../../core/utlis/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(14),
              image: const DecorationImage(
                  image: AssetImage(AssetsData.book), fit: BoxFit.contain)),
        ),
      ),
    );
  }
}
