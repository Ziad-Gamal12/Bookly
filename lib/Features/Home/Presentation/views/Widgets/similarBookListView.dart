import 'package:bookly/Features/Home/Presentation/manager/SimilarBooks/similar_books_cubit.dart';
import 'package:bookly/Features/Home/Presentation/views/Widgets/Custom_pageview_item.dart';
import 'package:bookly/core/Loading/FetchedBookks_ListView.dart';

import 'package:bookly/core/Widgets/CustomErrorWidget.dart';

import 'package:bookly/core/utils/App_Router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class similarBookListView extends StatelessWidget {
  const similarBookListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 30),
            child: SizedBox(
              height: height * .14,
              child: ListView.builder(
                  itemCount: 10,
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: InkWell(
                          onTap: () {
                            GoRouter.of(context).pushReplacement(
                                app_router.KbookdetailsView,
                                extra: state.books[i]);
                          },
                          child: CustomPageviewitem(
                            ImageUrl: state.books[i].volumeInfo.imageLinks
                                    ?.thumbnail ??
                                "",
                          ),
                        ));
                  }),
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errmessage: state.errmessage);
        } else {
          return SizedBox(
            height: height * .14,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: CustomFetchedBookks_ListView(
                height: height * .14,
              ),
            ),
          );
        }
      },
    );
  }
}
