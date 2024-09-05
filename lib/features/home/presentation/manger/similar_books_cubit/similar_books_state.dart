part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarLoadingBooks extends SimilarBooksState {}

final class SimilarFailureBooks extends SimilarBooksState {
  final String errMessage;

  const SimilarFailureBooks(this.errMessage);
}

final class SimilarSuccessBooks extends SimilarBooksState {
  final List<BookModel> books;

  const SimilarSuccessBooks(this.books);
}
