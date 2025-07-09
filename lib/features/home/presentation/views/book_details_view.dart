import 'package:booklyapp/core/themes/app_images.dart';
import 'package:booklyapp/features/home/presentation/widgets/book_details_body.dart';
import 'package:booklyapp/features/home/presentation/widgets/recommended_books_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/book_details_app_bar.dart';
class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 30),
            child: BookDetailsAppBar(),
          ),
    BookDetailsBody(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 60.0,horizontal: 30),
            child: RecommendedBooksWidget(),
          )
        ],
      ),


    );
  }
}
