import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.close,color: Theme.of(context).secondaryHeaderColor,size: 25.sp,)),
        Spacer(),
        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,size:23.sp,color: Theme.of(context).secondaryHeaderColor,))

      ],

    );
  }
}
