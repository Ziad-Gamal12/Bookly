import 'package:bookly/Features/Home/Presentation/manager/SimilarBooks/similar_books_cubit.dart';
import 'package:bookly/Features/Home/Presentation/views/Widgets/Bookdetails_View_body.dart';
import 'package:bookly/core/Models/book_model/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Bookdetails_View extends StatefulWidget {
  const Bookdetails_View({super.key, required this.item});
  final Item item;
  @override
  State<Bookdetails_View> createState() => _Bookdetails_ViewState();
}

class _Bookdetails_ViewState extends State<Bookdetails_View> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).FetchedSimilarBooks(
        Categroy: widget.item.volumeInfo.categories?[0] ?? "Fiction");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Bookdetails_View_body(
        item: widget.item,
      )),
    );
  }
}
