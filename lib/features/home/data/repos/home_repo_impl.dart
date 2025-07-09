import 'package:booklyapp/core/error%20handling/failures.dart';
import 'package:booklyapp/core/utls/api_service.dart';
import 'package:booklyapp/features/home/data/models/book_model.dart';
import 'package:booklyapp/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo{
  HomeRepoImpl(this.apiService);
  final ApiService apiService;
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks() async{
   
try {
  var data = await apiService.getMethod(endpoint: 'volumes?q=Sorting:newest+filter=free-ebooks');
  List<BookModel> books =[];
  for(var item in data['items']){
    books.add(BookModel.fromJson(item));
  }
  return right(books);
} on Exception catch (e) {
  if (e is DioException) {
    return left(ServerFailure.fromDioError(e));
  }
return left(ServerFailure(e.toString()));
}
   
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() async{

   try {
     var data = await apiService.getMethod(endpoint:'volumes?q=Subject:Programming+filter=free-ebooks' );
     List<BookModel> fBooks=[];
     for(var book in data['items']){
       fBooks.add(BookModel.fromJson(book));
     }
     return right(fBooks);
   } on Exception catch (e) {
    if(e is DioException){
      return left(ServerFailure.fromDioError(e));
    }
    else{
      return left(ServerFailure(e.toString()));
    }
   }
  }

}