import 'package:booklyapp/core/themes/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class RecommendedBooksWidget extends StatelessWidget {
  const RecommendedBooksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Align(alignment: Alignment.topLeft,child: Text('You Can See Also',style: Theme.of(
          context,
        ).textTheme.displaySmall!,)),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          height: 112.h,
          width: 390.w,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: 7,
              itemBuilder: (context,i)=>Padding(
                padding: const EdgeInsets.only(right: 6.0),
                child: Image.asset(Assets.bookImg,width: 78.w,height: 112.h,),
              )),
        ),
      ],
    );
  }
}
