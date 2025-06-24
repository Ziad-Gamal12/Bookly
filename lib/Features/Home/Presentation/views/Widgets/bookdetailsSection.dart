import 'package:bookly/Features/Home/Presentation/views/Widgets/BookActionButton.dart';
import 'package:bookly/Features/Home/Presentation/views/Widgets/Custom_pageview_item.dart';
import 'package:bookly/Features/Home/Presentation/views/Widgets/customBookDetails_Bookdetails.dart';
import 'package:bookly/core/Models/book_model/item.dart';
import 'package:flutter/material.dart';

class bookdetailsSection extends StatelessWidget {
  const bookdetailsSection({super.key, required this.item});
  final Item item;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: width * .30),
          child: CustomPageviewitem(
            ImageUrl: item.volumeInfo.imageLinks?.thumbnail ?? "",
          ),
        ),
        customBookDetails_Bookdetails(item: item),
        const SizedBox(
          height: 37,
        ),
        BookActionButton(
          item: item,
        ),
      ],
    );
  }
}
