import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeatureBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fechFeaturedBooks();
    result.fold((Failures) {
      emit(FeaturedBooksFailure(Failures.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
