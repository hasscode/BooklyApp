import 'package:booklyapp/core/error%20handling/failures.dart';
import 'package:booklyapp/features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Failures,List<BookModel>>>fetchBestSellerBooks();
  Future<Either<Failures,List<BookModel>>>fetchFeaturedBooks();
}