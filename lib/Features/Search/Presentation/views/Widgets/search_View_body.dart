import 'package:bookly/Features/Search/Presentation/views/Widgets/CustomSearch_text_field.dart';
import 'package:bookly/Features/Search/Presentation/views/Widgets/searchResult_ListView.dart';
import 'package:bookly/core/utils/Styles.dart';
import 'package:flutter/material.dart';

class search_View_body extends StatelessWidget {
  const search_View_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearch_text_field(),
          SizedBox(
            height: 16,
          ),
          Text(
            "Search Result",
            style: Styles.textStyle18,
          ),
          Expanded(child: searchResult_ListView())
        ],
      ),
    );
  }
}
