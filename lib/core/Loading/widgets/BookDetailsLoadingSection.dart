import 'package:bookly/core/Loading/widgets/ListViewloadingitem.dart';
import 'package:flutter/material.dart';

class BookDetailsLoadingSection extends StatelessWidget {
  const BookDetailsLoadingSection({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListViewloadingitem(
          height: height * 0.025,
          aspectRatio: 1 / .12,
          redius: 5,
        ),
        const SizedBox(
          height: 7,
        ),
        ListViewloadingitem(
          height: height * 0.02,
          aspectRatio: 1 / .12,
          redius: 5,
        ),
      ],
    );
  }
}
