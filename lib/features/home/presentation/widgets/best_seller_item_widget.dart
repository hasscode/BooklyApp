import 'package:booklyapp/core/themes/app_images.dart';
import 'package:booklyapp/core/utls/app_router.dart';
import 'package:booklyapp/features/home/presentation/views/book_details_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BestSellerItemWidget extends StatelessWidget {
  const BestSellerItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: (){
       GoRouter.of(context).push(AppRouter.bookDetailsView);
     },
      child: Row(
        children: [
          Image.asset(Assets.bookImg, width: 77.w, height: 114.h),
          SizedBox(width: 29.w),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  maxLines: 2,
                  'Harry Potter and the Goblet of Fire',
                  style: Theme.of(
                    context,
                  ).textTheme.displayLarge!.copyWith(fontSize: 20.sp),
                ),
                SizedBox(height: 8.h),
                Text(
                  'J.K. Rowling',
                  style: Theme.of(
                    context,
                  ).textTheme.displaySmall!.copyWith(color: Color(0xffB5B4BA)),
                ),
                SizedBox(height: 11.h),
                Row(
                  children: [
                    Text(
                      '19.99 €',
                      style: Theme.of(
                        context,
                      ).textTheme.displaySmall!.copyWith(fontSize: 20.sp),
                    ),
                    SizedBox(width: 38),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.star_fill,
                          color: Color(0xffFFDD4F),
                          size: 20.sp,
                        ),
                        Text(
                          ' 4.8',
                          style: Theme.of(
                            context,
                          ).textTheme.displaySmall!.copyWith(fontSize: 16.sp),
                        ),
                        SizedBox(width: 8),
                        Text(
                          '(2956)',
                          style: Theme.of(context).textTheme.displaySmall!
                              .copyWith(color: Color(0xff87858F), fontSize: 14.sp),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
