part of 'search_list_view_cubit.dart';

sealed class SearchListViewState extends Equatable {
  const SearchListViewState();

  @override
  List<Object> get props => [];
}

final class SearchListViewInitial extends SearchListViewState {}

final class SearchListViewLoading extends SearchListViewState {}

final class SearchListViewSuccess extends SearchListViewState {
  final List<Item> Books;

  const SearchListViewSuccess({required this.Books});
}

final class SearchListViewFailure extends SearchListViewState {
  final String errmessage;

  const SearchListViewFailure({required this.errmessage});
}
