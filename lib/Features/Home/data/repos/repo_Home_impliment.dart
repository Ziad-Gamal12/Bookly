import 'package:bookly/core/Models/book_model/item.dart';
import 'package:bookly/Features/Home/data/repos/repo_Home.dart';
import 'package:bookly/core/errors/Failures.dart';
import 'package:bookly/core/utils/Api_sevice.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class repo_Home_Impliment implements repo_home {
  final Api_Service api_service;
  repo_Home_Impliment(this.api_service);
  @override
  Future<Either<Failure, List<Item>>> featuredBEstSellerBooks() async {
    try {
      var data = await api_service.get(
          EndUrl:
              "volumes?Filtering=free-ebooks&Sorting=newest&q=subject:novels");
      List<Item> books = [];
      for (var item in data["items"]) {
        books.add(Item.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.formDioError(dioerror: e));
      } else {
        return left(ServerFailure(errmessage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<Item>>> featuredbooks() async {
    try {
      var data = await api_service.get(
          EndUrl: "volumes?Filtering=free-ebooks&q=Non_Fiction");
      List<Item> books = [];
      for (var item in data["items"]) {
        books.add(Item.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.formDioError(dioerror: e));
      } else {
        return left(ServerFailure(errmessage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<Item>>> fetchedSimilarBooks(
      {required String Categroy}) async {
    try {
      var data = await api_service.get(
          EndUrl:
              "volumes?Filtering=free-ebooks&Sorting=relevance&q=$Categroy");
      List<Item> books = [];
      for (var item in data["items"]) {
        books.add(Item.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.formDioError(dioerror: e));
      } else {
        return left(ServerFailure(errmessage: e.toString()));
      }
    }
  }
}
