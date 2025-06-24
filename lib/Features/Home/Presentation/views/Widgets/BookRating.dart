import 'package:bookly/core/utils/Styles.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.rating, required this.count});
  final double rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Free",
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        Row(
          children: [
            const Icon(
              FontAwesomeIcons.solidStar,
              size: 17,
              color: Color(0xffFFDD4F),
            ),
            const SizedBox(
              width: 6.3,
            ),
            Text(
              rating.toString(),
              style: Styles.textStyle16,
            ),
            const SizedBox(
              width: 9,
            ),
            Text(
              "($count)",
              style:
                  Styles.textStyle14.copyWith(color: const Color(0xff707070)),
            )
          ],
        ),
      ],
    );
  }
}
