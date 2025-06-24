import 'package:bookly/core/utils/Assests.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomPageviewitem extends StatelessWidget {
  const CustomPageviewitem({super.key, required this.ImageUrl});
  final String ImageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: AspectRatio(
          aspectRatio: 2.7 / 4,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: ImageUrl,
            errorWidget: (context, url, error) => const Center(
              child: Icon(Icons.error_outline),
            ),
          )),
    );
  }
}
