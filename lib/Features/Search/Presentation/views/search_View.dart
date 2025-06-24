import 'package:bookly/Features/Search/Presentation/views/Widgets/search_View_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class search_View extends StatelessWidget {
  const search_View({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: search_View_body()),
    );
  }
}
