import 'package:bookish/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookish/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookish/Features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookish/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 10,
            top: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBooksListView(),
              SizedBox(height: 30),
              Text(
                'Best Seller',
                style: Styles.textStyle20,
              ),
              SizedBox(height: 20),
            ],
          ),
        )),
        SliverFillRemaining(
          child: NewestListView(),
        ),
      ],
    );
  }
}
