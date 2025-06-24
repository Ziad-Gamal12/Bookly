import 'package:bookly/Features/Search/data/Search_Repos/search_repo.dart';
import 'package:bookly/core/Models/book_model/item.dart';
import 'package:bookly/core/errors/Failures.dart';
import 'package:bookly/core/utils/Api_sevice.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class Search_repo_impeliments implements search_repo {
  const Search_repo_impeliments({required this.api_service});
  final Api_Service api_service;

  @override
  Future<Either<Failure, List<Item>>> SearchListView(
      {required String SearchType}) async {
    try {
      var data = await api_service.get(
          EndUrl: 'volumes?Filtering=free-ebooks&Sorting=newest&q=$SearchType');
      List<Item> books = [];
      for (var item in data["items"]) {
        books.add(Item.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.formDioError(dioerror: e));
      } else {
        return left(ServerFailure(errmessage: "This item not found"));
      }
    }
  }
}
