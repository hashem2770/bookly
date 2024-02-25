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
    return BlocBuilder<NewestBooksCubit,NewestBooksState>(builder:(context, state) {
      if(state is NewestBooksSuccess){
         return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => NewestListViewItem(
              book: state.newBooks[index],
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 8,
            ),
            itemCount: state.newBooks.length,
          ),
        );
      }else if(state is NewestBooksFailure){
        return CustomError(state.errMessage);
      }else{
        return const CustomLoadingIndicator();
      }
    }, );
  }
}
