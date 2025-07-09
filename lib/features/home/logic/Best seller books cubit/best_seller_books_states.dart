import 'package:booklyapp/features/home/data/models/book_model.dart';

abstract class BestSellerBooksState {}
class BestSellerBooksInitial extends BestSellerBooksState{}
class BestSellerBooksLoading extends BestSellerBooksState{}
class BestSellerBooksFailure extends BestSellerBooksState{
  final String errMessage;
  BestSellerBooksFailure(this.errMessage);
}
class BestSellerBooksSuccess extends BestSellerBooksState{
  final List<BookModel> books;
  BestSellerBooksSuccess(this.books);
}