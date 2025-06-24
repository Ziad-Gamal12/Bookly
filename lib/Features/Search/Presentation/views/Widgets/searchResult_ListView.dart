import 'package:bookly/Features/Home/Presentation/views/Widgets/BestSeller_item.dart';
import 'package:bookly/Features/Search/Presentation/Manager/SearchListView/search_list_view_cubit.dart';
import 'package:bookly/core/Widgets/CustomErrorWidget.dart';
import 'package:bookly/core/Widgets/CustomLoadingIndicator.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class searchResult_ListView extends StatelessWidget {
  const searchResult_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchListViewCubit, SearchListViewState>(
        builder: (context, state) {
      if (state is SearchListViewSuccess) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.Books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BestSeller_item(item: state.Books[index]),
                );
              }),
        );
      } else if (state is SearchListViewFailure) {
        return Center(child: CustomErrorWidget(errmessage: state.errmessage));
      } else if (state is SearchListViewLoading) {
        return const CustomLoadingIndicator();
      } else {
        return Center(child: Image.asset("assets/images/reading.png"));
      }
    });
  }
}
