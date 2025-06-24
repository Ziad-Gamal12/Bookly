import 'package:bookly/Features/Home/Presentation/manager/FeaturedBooks/featured_books_cubit.dart';
import 'package:bookly/Features/Home/Presentation/views/Widgets/Custom_pageview_item.dart';
import 'package:bookly/core/Loading/FetchedBookks_ListView.dart';

import 'package:bookly/core/Widgets/CustomErrorWidget.dart';
import 'package:bookly/core/Widgets/CustomLoadingIndicator.dart';
import 'package:bookly/core/utils/App_Router.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class Custom_BooksListView extends StatelessWidget {
  const Custom_BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: SizedBox(
          height: height * .27,
          child: BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
              builder: (context, state) {
            if (state is FeaturedBooksSuccess) {
              return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: state.books.length,
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: InkWell(
                          onTap: () {
                            GoRouter.of(context).push(
                                app_router.KbookdetailsView,
                                extra: state.books[index]);
                          },
                          child: CustomPageviewitem(
                              ImageUrl: state.books[index].volumeInfo.imageLinks
                                      ?.thumbnail ??
                                  ""),
                        ));
                  });
            } else if (state is FeaturedBooksFailure) {
              return Center(
                  child: CustomErrorWidget(errmessage: state.errmessage));
            } else {
              return CustomFetchedBookks_ListView(
                height: height * 0.25,
              );
            }
          })),
    );
  }
}
