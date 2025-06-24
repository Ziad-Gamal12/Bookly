import 'package:bloc/bloc.dart';
import 'package:bookly/core/Models/book_model/item.dart';
import 'package:bookly/Features/Home/data/repos/repo_Home.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.Repo_Home) : super(SimilarBooksInitial());
  final repo_home Repo_Home;

  Future<void> FetchedSimilarBooks({required String Categroy}) async {
    emit(SimilarBooksLoading());
    var result = await Repo_Home.fetchedSimilarBooks(Categroy: Categroy);
    result.fold((Failure) {
      emit(SimilarBooksFailure(errmessage: Failure.errmessage));
    }, (Books) {
      emit(SimilarBooksSuccess(books: Books));
    });
  }
}
