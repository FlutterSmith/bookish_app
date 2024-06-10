import 'package:bookish/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookish/Features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookish/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 20,
        right: 10,
        top: 10,
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 40),
          Text('Best Seller', style: Styles.titleMedium),
        ],
      ),
    );
  }
}
