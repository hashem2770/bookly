import 'package:bookly/core/widgets/custom_error.dart';
import 'package:bookly/core/widgets/custom_loading-indicator.dart';
import 'package:bookly/features/home_view/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'newest_list_view_item.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.newBooks.length,
              (context, index) {
                return NewestListViewItem(
                  book: state.newBooks[index],
                );
              },
            ),
          );
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(child: CustomError(state.errMessage));
        } else {
          return const SliverToBoxAdapter(child:  CustomLoadingIndicator());
        }
      },
    );
  }
}
