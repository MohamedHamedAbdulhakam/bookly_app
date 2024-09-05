import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarLoadingBooks());
    var result = await homeRepo.fechSimilarBooks(category: category);
    result.fold((Failures) {
      emit(SimilarFailureBooks(Failures.errMessage));
    }, (books) {
      emit(SimilarSuccessBooks(books));
    });
  }
}
