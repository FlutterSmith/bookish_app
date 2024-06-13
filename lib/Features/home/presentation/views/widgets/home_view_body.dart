import 'package:bookish/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookish/Features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookish/constants.dart';
import 'package:bookish/core/utils/assets.dart';
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
          SizedBox(height: 51),
          Text(
            'Best Seller',
            style: Styles.textStyle20,
          ),
          SizedBox(height: 20),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.4 / 3.9,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage(
                    AssetsData.testImage2,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: const Text(' Harry Potter and the Goblet of Fire ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle24),
              ),
              const Text('J.KRowling', style: Styles.textStyle16),
              const Text('19.99', style: Styles.textStyle24),
            ],
          ),
          const Row(
            children: [
              Icon(Icons.star, color: Colors.yellow),
              SizedBox(width: 5),
              Text('4.8', style: Styles.textStyle20),
            ],
          )
        ],
      ),
    );
  }
}
