import 'package:bookish/Features/home/data/models/book_model/book_model.dart';
import 'package:bookish/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookish/constants.dart';
import 'package:bookish/core/utils/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewestListViewItem extends StatelessWidget {
  const NewestListViewItem({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 15,
      ),
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.4 / 3.9,
              child: CachedNetworkImage(
                imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(bookModel.volumeInfo.title!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle20.copyWith(
                          fontFamily: kGTSectraFamily,
                        )),
                  ),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle16,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle24.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      BookRating(
                        rating: bookModel.volumeInfo.averageRaing ?? 0,
                        ratingCount: bookModel.volumeInfo.ratingsCount ?? 0,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
