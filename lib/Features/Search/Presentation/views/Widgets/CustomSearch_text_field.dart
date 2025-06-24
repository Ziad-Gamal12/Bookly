import 'package:bookly/Features/Search/Presentation/Manager/SearchListView/search_list_view_cubit.dart';
import 'package:bookly/core/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSearch_text_field extends StatelessWidget {
  const CustomSearch_text_field({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return TextField(
      onSubmitted: (value) {
        BlocProvider.of<SearchListViewCubit>(context)
            .search_list_view(searchType: textEditingController.text);
      },
      controller: textEditingController,
      decoration: InputDecoration(
          suffixIcon: IconButton(
              onPressed: () {
                BlocProvider.of<SearchListViewCubit>(context)
                    .search_list_view(searchType: textEditingController.text);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 17,
              )),
          hintText: "Search",
          hintStyle: Styles.textStyle16,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.white)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.white))),
    );
  }
}
