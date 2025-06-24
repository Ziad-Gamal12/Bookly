import 'package:bookly/core/Loading/widgets/BookDetailsLoadingSection.dart';
import 'package:bookly/core/Loading/widgets/BookRatingLoadingSection.dart';
import 'package:bookly/core/Loading/widgets/ListViewloadingitem.dart';
import 'package:flutter/material.dart';

class ListViewLoading extends StatelessWidget {
  const ListViewLoading({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: 129,
      child: Row(
        children: [
          ListViewloadingitem(
            aspectRatio: 2.6 / 4,
            height: height * 0.25,
            redius: 10,
          ),
          const SizedBox(
            width: 30,
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BookDetailsLoadingSection(),
                SizedBox(
                  height: 8,
                ),
                BookRatingLoadingSection()
              ],
            ),
          )
        ],
      ),
    );
  }
}
