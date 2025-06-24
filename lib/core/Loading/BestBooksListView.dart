import 'package:bookly/core/Loading/widgets/ListViewLoading.dart';
import 'package:flutter/material.dart';

class CustomBestBooksLoadingListView extends StatelessWidget {
  const CustomBestBooksLoadingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ListViewLoading(),
          );
        });
  }
}
