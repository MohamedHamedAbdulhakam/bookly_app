import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementation implements HomeRepo {
  @override
  Future<Either<Failures, List<BookModel>>> fechBestSellerBooks() {
    // TODO: implement fechBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BookModel>>> fechFeaturedBooks() {
    // TODO: implement fechFeaturedBooks
    throw UnimplementedError();
  }
}
