import 'package:bookish/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookish/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 10,
          top: 10,
          bottom: 20,
        ),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return const NewestListViewItem();
          },
          itemCount: 20,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
