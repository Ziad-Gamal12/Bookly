import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Search/data/Search_Repos/search_repo.dart';
import 'package:bookly/core/Models/book_model/item.dart';
import 'package:equatable/equatable.dart';

part 'search_list_view_state.dart';

class SearchListViewCubit extends Cubit<SearchListViewState> {
  SearchListViewCubit(this.SearchRepo) : super(SearchListViewInitial());
  final search_repo SearchRepo;
  Future<void> search_list_view({required String searchType}) async {
    emit(SearchListViewLoading());
    var result = await SearchRepo.SearchListView(SearchType: searchType);
    result.fold((Failure) {
      emit(SearchListViewFailure(errmessage: Failure.errmessage));
    }, (Books) {
      emit(SearchListViewSuccess(Books: Books));
    });
  }

  @override
  void onChange(Change<SearchListViewState> change) {
    print(change);
    super.onChange(change);
  }
}
