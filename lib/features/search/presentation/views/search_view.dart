import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../home/presentation/widgets/best_seller_item_widget.dart';
class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextField(

            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(

                  vertical: 10
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Theme.of(context).secondaryHeaderColor,)
              ),
              enabledBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Theme.of(context).secondaryHeaderColor,)
              ),
             suffixIcon: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.search,color: Theme.of(context).secondaryHeaderColor)),
             prefixIcon: IconButton(onPressed: (){GoRouter.of(context).pop(true);}, icon: Icon(Icons.close,color: Theme.of(context).secondaryHeaderColor)),
            ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Align(alignment: Alignment.topLeft, child: Text('Search Results ',style: Theme.of(context).textTheme.displayMedium,)),
            SizedBox(height: 30.h,),
            Expanded(
              child: ListView.builder(

                  itemCount: 6, itemBuilder:(context,i)=>Padding(
                padding: const EdgeInsets.only(bottom: 13.0),
                child: BestSellerItemWidget(),
              ) ),
            )
          ],
        ),
      ),
    );
  }
}
