import 'package:bookly/Features/Home/Presentation/manager/SimilarBooks/similar_books_cubit.dart';
import 'package:bookly/Features/Home/Presentation/views/Bookdetails_View.dart';
import 'package:bookly/Features/Home/Presentation/views/Home.dart';
import 'package:bookly/Features/Search/Presentation/Manager/SearchListView/search_list_view_cubit.dart';
import 'package:bookly/Features/Search/data/Search_Repos/Search_repo_impeliments.dart';

import 'package:bookly/core/Models/book_model/item.dart';
import 'package:bookly/Features/Home/data/repos/repo_Home_impliment.dart';
import 'package:bookly/Features/Search/Presentation/views/search_View.dart';
import 'package:bookly/Features/Splash/Presentation/views/SplashView.dart';
import 'package:bookly/core/utils/Api_sevice.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';

abstract class app_router {
  static const KhomeView = "/homeView";
  static const KbookdetailsView = "/bookDetails_View";
  static const KSearch_View = "/Search_View";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: KhomeView,
        builder: (context, state) => const Home(),
      ),
      GoRoute(
        path: KbookdetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              SimilarBooksCubit(repo_Home_Impliment(Api_Service(Dio()))),
          child: Bookdetails_View(
            item: state.extra as Item,
          ),
        ),
      ),
      GoRoute(
        path: KSearch_View,
        builder: (context, state) => BlocProvider(
          create: (context) => SearchListViewCubit(
              Search_repo_impeliments(api_service: Api_Service(Dio()))),
          child: const search_View(),
        ),
      ),
    ],
  );
}
