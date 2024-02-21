import 'package:bookly/features/home_view/presentation/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

import 'custom_details_view_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 12),
        child: Column(
          children: [
            const CustomDetailsViewAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width*.17),
              child: const CustomBookImage(),
            ),
          ],
        ),
      ),
    );
  }
}
