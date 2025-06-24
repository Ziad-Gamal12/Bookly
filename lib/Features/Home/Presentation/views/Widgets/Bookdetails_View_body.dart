import 'package:bookly/Features/Home/Presentation/views/Widgets/CustomBookDetails_Appbar.dart';
import 'package:bookly/Features/Home/Presentation/views/Widgets/SimilarbookListViewSection.dart';
import 'package:bookly/Features/Home/Presentation/views/Widgets/bookdetailsSection.dart';
import 'package:bookly/core/Models/book_model/item.dart';
import 'package:flutter/material.dart';

class Bookdetails_View_body extends StatelessWidget {
  const Bookdetails_View_body({super.key, required this.item});
  final Item item;

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    return ListView(children: [
      const CustomBookDetails_Appbar(),
      bookdetailsSection(
        item: item,
      ),
      SizedBox(
        height: Height * 0.08,
      ),
      const SimilarbookListViewSection(),
      const SizedBox(
        height: 40,
      ),
    ]);
  }
}
