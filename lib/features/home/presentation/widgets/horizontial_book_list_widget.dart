import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/app_images.dart';
class HorizontialBookListWidget extends StatelessWidget {
  const HorizontialBookListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      height: 224.h,
      child: ListView.builder(

        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, i) => Image.asset(Assets.bookImg,height: 224.h,),
      ),
    );
  }
}
