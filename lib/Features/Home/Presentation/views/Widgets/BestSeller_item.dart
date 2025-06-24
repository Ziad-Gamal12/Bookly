import 'package:bookly/Features/Home/Presentation/views/Widgets/BookRating.dart';
import 'package:bookly/Features/Home/Presentation/views/Widgets/Custom_pageview_item.dart';
import 'package:bookly/core/Models/book_model/item.dart';
import 'package:bookly/constante.dart';
import 'package:bookly/core/utils/App_Router.dart';

import 'package:bookly/core/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSeller_item extends StatelessWidget {
  const BestSeller_item({super.key, required this.item});
  final Item item;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(app_router.KbookdetailsView, extra: item);
      },
      child: SizedBox(
        height: 129,
        child: Row(children: [
          CustomPageviewitem(
            ImageUrl: item.volumeInfo.imageLinks?.thumbnail ?? "",
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: width * .5,
                  child: Text(
                    item.volumeInfo.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20
                        .copyWith(fontFamily: KsecondFontFamily),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  item.volumeInfo.authors?[0] ?? "UnKnown",
                  style: Styles.textStyle14,
                ),
                Expanded(
                  child: BookRating(
                    count: item.volumeInfo.ratingsCount ?? 0,
                    rating: item.volumeInfo.averageRating ?? 0,
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
