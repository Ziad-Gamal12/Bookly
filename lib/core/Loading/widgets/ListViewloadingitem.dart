import 'package:bookly/constante.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shimmer/shimmer.dart';

class ListViewloadingitem extends StatelessWidget {
  const ListViewloadingitem(
      {super.key,
      required this.aspectRatio,
      required this.height,
      required this.redius});
  final double aspectRatio;
  final double height;
  final double redius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        child: Shimmer.fromColors(
          baseColor: KPrimaryColor,
          highlightColor: Colors.grey.shade300.withOpacity(0.3),
          child: AspectRatio(
            aspectRatio: aspectRatio,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(redius)),
            ),
          ),
        ));
  }
}
