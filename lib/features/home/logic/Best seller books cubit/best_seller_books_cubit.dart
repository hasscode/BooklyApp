import 'package:booklyapp/features/home/data/repos/home_repo.dart';
import 'package:booklyapp/features/home/logic/Best%20seller%20books%20cubit/best_seller_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState>{
  BestSellerBooksCubit(this.homeRepo):super (BestSellerBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchBestSeller()async{
    emit(BestSellerBooksLoading());
    var result = await homeRepo.fetchBestSellerBooks();
    result.fold((failure)=>emit(BestSellerBooksFailure(failure.errmessage)),( books)=>emit(BestSellerBooksSuccess(books)));
  }


}