import 'package:bookly/Features/Home/Presentation/views/Widgets/BestSeller_ListVeiw.dart';

import 'package:bookly/Features/Home/Presentation/views/Widgets/Custom_BooksListView.dart';
import 'package:bookly/Features/Home/Presentation/views/Widgets/custom_Appbar.dart';
import 'package:bookly/core/utils/Styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          custom_Appbar(),
          Custom_BooksListView(),
          Padding(
            padding: EdgeInsets.only(left: 30, top: 49, bottom: 19),
            child: Text(
              "Best Seller",
              style: Styles.textStyle18,
            ),
          ),
          BestSeller_ListVeiw()
        ],
      ),
    );
  }
}
