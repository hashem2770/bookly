
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDetailsViewAppBar extends StatelessWidget {
  const CustomDetailsViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        IconButton(
          onPressed: () {

          },
          icon: const Icon(Icons.shopping_cart_outlined),
        ),
      ],
    );
  }
}
