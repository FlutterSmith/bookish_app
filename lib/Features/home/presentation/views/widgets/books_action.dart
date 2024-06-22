import 'package:bookish/Features/home/data/models/book_model/book_model.dart';
import 'package:bookish/core/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        children: [
          const Expanded(
              child: CustomButton(
            text: 'Download',
            textColor: Colors.black,
            backGroundColor: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          )),
          Expanded(
              child: CustomButton(
            onPressed: () async {
              Uri url = Uri.parse(bookModel.volumeInfo.previewLink!);
              if (!await launchUrl(url)) {}
            },
            text: getText(bookModel),
            textColor: Colors.white,
            backGroundColor: const Color(0xffef8262),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          )),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Preview';
    }
  }
}
