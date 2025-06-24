import 'package:bookly/core/Models/book_model/item.dart';
import 'package:bookly/core/utils/Styles.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bookly/core/utils/Styles.dart';

class customBookDetails_Bookdetails extends StatelessWidget {
  const customBookDetails_Bookdetails({super.key, required this.item});
  final Item item;

  @override
  Widget build(BuildContext context) {
    int RatingCount = item.volumeInfo.ratingsCount ?? 0;
    double averageRating = item.volumeInfo.averageRating ?? 0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          item.volumeInfo.title == null ? "Unknown" : item.volumeInfo.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          item.volumeInfo.authors?[0] ?? "Unknown",
          style: Styles.textStyle18,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 14,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
              "$averageRating",
              style: Styles.textStyle16,
            ),
            const SizedBox(
              width: 9,
            ),
            Text(
              "($RatingCount)",
              style:
                  Styles.textStyle14.copyWith(color: const Color(0xff707070)),
            )
          ],
        )
      ],
    );
  }
}
