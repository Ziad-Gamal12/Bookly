import 'package:bookly/core/Models/book_model/item.dart';
import 'package:bookly/core/errors/Failures.dart';
import 'package:dartz/dartz.dart';

abstract class repo_home {
  Future<Either<Failure, List<Item>>> featuredbooks();
  Future<Either<Failure, List<Item>>> featuredBEstSellerBooks();
  Future<Either<Failure, List<Item>>> fetchedSimilarBooks(
      {required String Categroy});
}
