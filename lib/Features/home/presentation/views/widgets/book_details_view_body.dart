import 'package:bookish/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookish/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookish/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookish/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 40,
        bottom: 20,
      ),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(
              left: width * 0.22,
              right: width * 0.22,
              bottom: 20,
            ),
            child: const CustomBookImage(),
          ),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            'Rudyard Kipling',
            style: Styles.textStyle16.copyWith(
              fontStyle: FontStyle.italic,
              color: Colors.grey.shade300,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.solidStar, color: Colors.yellow, size: 15),
              SizedBox(width: 6.3),
              Text('4.8', style: Styles.textStyle20),
              SizedBox(width: 5),
              Text('(2000)', style: Styles.textStyle14),
            ],
          ),
        ],
      ),
    );
  }
}
