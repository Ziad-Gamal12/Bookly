import 'package:bookly/Features/Home/Presentation/manager/BestSellerBooks/best_seller_books_cubit.dart';
import 'package:bookly/Features/Home/Presentation/manager/FeaturedBooks/featured_books_cubit.dart';
import 'package:bookly/Features/Home/data/repos/repo_Home_impliment.dart';
import 'package:bookly/constante.dart';
import 'package:bookly/core/utils/Api_sevice.dart';
import 'package:bookly/core/utils/App_Router.dart';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                FeaturedBooksCubit(repo_Home_Impliment(Api_Service(Dio())))
                  ..FetchedFeaturedBooks()),
        BlocProvider(
            create: (context) =>
                BestSellerBooksCubit(repo_Home_Impliment(Api_Service(Dio())))
                  ..FetchedBestSellerBooks())
      ],
      child: MaterialApp.router(
        routerConfig: app_router.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: KPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
