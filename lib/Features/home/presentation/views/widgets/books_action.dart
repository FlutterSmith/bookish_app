import 'package:bookish/core/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: CustomButton(
          text: '19.99€',
          textColor: Colors.black,
          backGroundColor: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
        )),
        Expanded(
            child: CustomButton(
          text: 'Free preview',
          textColor: Colors.white,
          backGroundColor: Color(0xffef8262),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        )),
      ],
    );
  }
}
