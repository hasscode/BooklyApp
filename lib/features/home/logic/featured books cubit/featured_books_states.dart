import 'package:booklyapp/features/home/data/models/book_model.dart';

abstract class FeaturedBooksState{}
class FeaturedBooksInitial extends FeaturedBooksState{}
class FeaturedBooksLoading extends FeaturedBooksState{}
class FeaturedBooksFailure extends FeaturedBooksState{
  final String errMessage ;
  FeaturedBooksFailure(this.errMessage);
}
class FeaturedBooksSuccess extends FeaturedBooksState{

  final  List<BookModel> books;
 FeaturedBooksSuccess(this.books);
}