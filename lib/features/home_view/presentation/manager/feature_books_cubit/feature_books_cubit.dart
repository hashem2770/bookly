import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/BookModel.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit() : super(FeatureBooksInitial());
}
