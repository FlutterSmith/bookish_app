import 'package:bookish/constants.dart';
import 'package:bookish/core/utils/assets.dart';
import 'package:bookish/core/utils/styles.dart';
import 'package:flutter/material.dart';

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
                child: Text(' Harry Potter and the Goblet of Fire ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle24.copyWith(
                      fontFamily: kGTSectraFamily,
                    )),
              ),
              const Text('J.K.Rowling', style: Styles.textStyle16),
              Text('19.99  \u{20B9}',
                  style:
                      Styles.textStyle24.copyWith(fontWeight: FontWeight.bold)),
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
