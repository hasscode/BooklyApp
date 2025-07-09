import 'package:booklyapp/features/home/presentation/widgets/best_seller_item_widget.dart';
import 'package:booklyapp/features/home/presentation/widgets/bookly_app_bar_widget.dart';
import 'package:booklyapp/features/home/presentation/widgets/horizontial_book_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(

                  padding: const EdgeInsets.symmetric(vertical: 45,horizontal: 30),
                  child: BooklyAppBarWidget(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: HorizontialBookListWidget(),
                ),

                SizedBox(height: 50.h,),
              ],
            ),
          ),

          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 36,bottom: 10),
              child: Column(
                children: [

                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Best Seller',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                  SizedBox(height: 30.h,),
                   Expanded(
                     child: ListView.builder(
                         physics: NeverScrollableScrollPhysics(),
                         itemCount: 6, itemBuilder:(context,i)=>Padding(
                       padding: const EdgeInsets.only(bottom: 13.0),
                       child: BestSellerItemWidget(),
                     ) ),
                   )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
