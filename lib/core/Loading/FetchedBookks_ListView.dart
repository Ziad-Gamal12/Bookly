import 'package:bookly/core/Loading/widgets/ListViewloadingitem.dart';
import 'package:flutter/material.dart';

class CustomFetchedBookks_ListView extends StatelessWidget {
  const CustomFetchedBookks_ListView({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: ListViewloadingitem(
                aspectRatio: 2.6 / 4, height: height, redius: 10),
          );
        });
  }
}
