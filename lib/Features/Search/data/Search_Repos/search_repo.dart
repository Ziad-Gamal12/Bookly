import 'package:bookly/core/Models/book_model/item.dart';
import 'package:bookly/core/errors/Failures.dart';
import 'package:dartz/dartz.dart';

abstract class search_repo {
  Future<Either<Failure, List<Item>>> SearchListView(
      {required String SearchType});
}
