part of 'best_seller_books_cubit.dart';

sealed class BestSellerBooksState extends Equatable {
  const BestSellerBooksState();

  @override
  List<Object> get props => [];
}

final class BestSellerBooksInitial extends BestSellerBooksState {}

final class BestSellerBooksLoading extends BestSellerBooksState {}

final class BestSellerBooksFailure extends BestSellerBooksState {
  final String errmessage;

  const BestSellerBooksFailure({required this.errmessage});
}

final class BestSellerBooksSuccess extends BestSellerBooksState {
  final List<Item> Books;

  const BestSellerBooksSuccess(this.Books);
}
