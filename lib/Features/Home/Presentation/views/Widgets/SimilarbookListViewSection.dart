import 'package:bookly/Features/Home/Presentation/views/Widgets/similarBookListView.dart';

import 'package:bookly/core/utils/Styles.dart';
import 'package:flutter/material.dart';

class SimilarbookListViewSection extends StatelessWidget {
  const SimilarbookListViewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "You can also like",
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const similarBookListView(),
      ],
    );
  }
}
