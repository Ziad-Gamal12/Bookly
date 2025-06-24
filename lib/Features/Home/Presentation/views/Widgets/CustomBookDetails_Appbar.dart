import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetails_Appbar extends StatelessWidget {
  const CustomBookDetails_Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
    );
  }
}
