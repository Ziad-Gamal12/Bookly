import 'package:bookly/core/utils/App_Router.dart';
import 'package:bookly/core/utils/Assests.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class custom_Appbar extends StatelessWidget {
  const custom_Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 47),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(app_router.KSearch_View);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 16,
              ))
        ],
      ),
    );
  }
}
