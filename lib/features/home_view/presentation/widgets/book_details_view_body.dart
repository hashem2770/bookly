import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'custom_details_view_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0,vertical: 12),
        child: Column(
          children: [
            CustomDetailsViewAppBar(),
          ],
        ),
      ),
    );
  }
}
