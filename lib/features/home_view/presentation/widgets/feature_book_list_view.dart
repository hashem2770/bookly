import 'package:bookly/core/widgets/custom_error.dart';
import 'package:bookly/core/widgets/custom_loading-indicator.dart';
import 'package:bookly/features/home_view/presentation/manager/feature_books_cubit/feature_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'custom_book_item.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksSuccess) {
          return SizedBox(
            height: 250,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  GoRouter.of(context).pushNamed('details_screen',extra: state.books[index]);
                },
                child: CustomBookImage(
                    bookImage:
                        state.books[index].volumeInfo!.imageLinks!.thumbnail!),
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 12),
              itemCount: 5,
            ),
          );
        } else if (state is FeatureBooksFailure) {
          return CustomError(state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
