import 'package:bookish/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.size,
    required this.rating,
    required this.ratingCount,
  });

  final MainAxisAlignment mainAxisAlignment;
  final double size;
  final int rating;
  final int ratingCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: size,
        ),
        const SizedBox(width: 6.3),
        Text(rating.toString(), style: Styles.textStyle20),
        const SizedBox(width: 5),
        Opacity(
          opacity: 0.5,
          child: Text(
            '($ratingCount)',
            style: Styles.textStyle14,
          ),
        ),
      ],
    );
  }
}
