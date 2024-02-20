import 'package:flutter/material.dart';

import 'custom_list_view_item.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const FeatureListViewItem(),
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemCount: 5,
      ),
    );
  }
}
