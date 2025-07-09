import 'package:booklyapp/features/home/data/repos/home_repo.dart';
import 'package:booklyapp/features/home/logic/featured%20books%20cubit/featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(FeaturedBooksFailure(failure.errmessage)),
      (books) => emit(FeaturedBooksSuccess(books)),
    );
  }
}
