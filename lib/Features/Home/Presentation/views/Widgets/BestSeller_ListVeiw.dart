import 'package:bookly/Features/Home/Presentation/manager/BestSellerBooks/best_seller_books_cubit.dart';
import 'package:bookly/Features/Home/Presentation/views/Widgets/BestSeller_item.dart';
import 'package:bookly/core/Loading/BestBooksListView.dart';

import 'package:bookly/core/Widgets/CustomErrorWidget.dart';
import 'package:bookly/core/Widgets/CustomLoadingIndicator.dart';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSeller_ListVeiw extends StatelessWidget {
  const BestSeller_ListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: BlocBuilder<BestSellerBooksCubit, BestSellerBooksState>(
        builder: (context, state) {
          if (state is BestSellerBooksSuccess) {
            return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: BestSeller_item(
                      item: state.Books[index],
                    ),
                  );
                });
          } else if (state is BestSellerBooksFailure) {
            return Center(
                child: CustomErrorWidget(errmessage: state.errmessage));
          } else {
            return const CustomBestBooksLoadingListView();
          }
        },
      ),
    );
  }
}
