import 'package:bloc/bloc.dart';
import 'package:bookly/core/Models/book_model/item.dart';
import 'package:bookly/Features/Home/data/repos/repo_Home.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  final repo_home Repo_Home;
  FeaturedBooksCubit(this.Repo_Home) : super(FeaturedBooksInitial());
  Future<void> FetchedFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await Repo_Home.featuredbooks();
    result.fold((Failure) {
      emit(FeaturedBooksFailure(errmessage: Failure.errmessage));
    }, (Books) {
      emit(FeaturedBooksSuccess(books: Books));
    });
  }
}
