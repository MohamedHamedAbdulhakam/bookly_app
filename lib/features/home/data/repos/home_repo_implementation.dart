import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiServices apiServices;
  HomeRepoImplementation(this.apiServices);
  @override
  Future<Either<Failures, List<BookModel>>> fechBestSellerBooks() async {
    // TODO: implement fechBestSellerBooks
    try {
      var data = await apiServices.get(
          endpoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure());
      // TODO
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fechFeaturedBooks() {
    // TODO: implement fechFeaturedBooks
    throw UnimplementedError();
  }
}
