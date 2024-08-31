import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>>
      fechBestSellerBooks(); //withot implementation because i used an absract calss
  Future<Either<Failures, List<BookModel>>> fechFeaturedBooks();
}
