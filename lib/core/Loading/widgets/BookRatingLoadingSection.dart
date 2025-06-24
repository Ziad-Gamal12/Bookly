import 'package:bookly/core/Loading/widgets/ListViewloadingitem.dart';
import 'package:flutter/material.dart';

class BookRatingLoadingSection extends StatelessWidget {
  const BookRatingLoadingSection({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        ListViewloadingitem(
          height: height * 0.03,
          aspectRatio: 1 / .35,
          redius: 5,
        ),
        const Spacer(),
        ListViewloadingitem(
          height: height * 0.02,
          aspectRatio: 1 / .23,
          redius: 5,
        ),
      ],
    );
  }
}
