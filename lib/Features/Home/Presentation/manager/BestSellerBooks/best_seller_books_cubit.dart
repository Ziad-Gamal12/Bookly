import 'package:bloc/bloc.dart';
import 'package:bookly/core/Models/book_model/book_model.dart';
import 'package:bookly/core/Models/book_model/item.dart';
import 'package:bookly/Features/Home/data/repos/repo_Home.dart';
import 'package:equatable/equatable.dart';

part 'best_seller_books_state.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState> {
  BestSellerBooksCubit(this.Repo_Home) : super(BestSellerBooksInitial());
  final repo_home Repo_Home;

  Future<void> FetchedBestSellerBooks() async {
    emit(BestSellerBooksLoading());
    var result = await Repo_Home.featuredBEstSellerBooks();
    result.fold((Failure) {
      emit(BestSellerBooksFailure(errmessage: Failure.errmessage));
    }, (Books) {
      emit(BestSellerBooksSuccess(Books));
    });
  }
}
