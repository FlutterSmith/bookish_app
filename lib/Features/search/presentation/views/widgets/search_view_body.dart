import 'package:bookish/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 40,
        bottom: 10,
      ),
      child: Column(
        children: [
          CustomSearchTextField(),
        ],
      ),
    );
  }
}
