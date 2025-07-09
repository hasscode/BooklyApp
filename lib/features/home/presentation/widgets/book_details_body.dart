import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/app_images.dart';
class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [

        Image.asset(Assets.bookImg,width: 162.w,height: 243.h,),
        SizedBox(height: 40.h,),
        Text('The Jungle Book',style: Theme.of(context,
        ).textTheme.displaySmall!.copyWith(fontSize: 30.sp),),
        SizedBox(
          height: 13.h,
        ),
        Text('Rudyard Kipling',style: Theme.of(context,
        ).textTheme.displayMedium!.copyWith(color: Color(0xffB7B6BC)),),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star_rounded,
              color: Color(0xffFFDD4F),
              size: 20.sp,
            ),
            Text('4.8',style: Theme.of(context,
            ).textTheme.displayMedium!.copyWith(fontSize: 16.sp,)),
            SizedBox(width: 6.w,),
            Text('(2987)',style: Theme.of(context,
            ).textTheme.displaySmall!.copyWith(color: Color(0xff87858F)),),
          ],
        ),
        SizedBox(
          height: 40.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150.w,
              height: 48.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                color: Colors.white,
              ),
              child:   Center(
                child: Text('19.99€',style: Theme.of(context,
                ).textTheme.displayMedium!.copyWith(color: Colors.black),),
              ),
            ),
            Container(
              width: 150.w,
              height: 48.h,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomLeft: Radius.circular(15)),
                color: Color(0xffEF8262),
              ),
              child:   Center(
                child: Text('Free Preview',style: Theme.of(context,
                ).textTheme.displayMedium!.copyWith(color: Colors.white,fontSize: 16),),
              ),
            ),
          ],
        )

      ],
    );
  }
}
