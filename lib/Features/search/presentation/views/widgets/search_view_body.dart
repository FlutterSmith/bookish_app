// import 'package:bookish/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
// import 'package:bookish/Features/search/presentation/views/widgets/custom_search_text_field.dart';
// import 'package:bookish/core/utils/app_router.dart';
// import 'package:bookish/core/utils/styles.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:go_router/go_router.dart';

// class SearchViewBody extends StatelessWidget {
//   const SearchViewBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Padding(
//       padding: EdgeInsets.only(
//         left: 20,
//         right: 20,
//         top: 40,
//         bottom: 10,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           CustomSearchTextField(),
//           SizedBox(height: 30),
//           Padding(
//             padding: EdgeInsets.only(left: 15),
//             child: Text(
//               'Search Result',
//               style: Styles.textStyle20,
//             ),
//           ),
//           Expanded(child: SearchListViewItem()),
//         ],
//       ),
//     );
//   }
// }

// class SearchListViewItem extends StatelessWidget {
//   const SearchListViewItem({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         GoRouter.of(context).push(AppRouter.kBookDetailsView);
//       },
//       child: Padding(
//         padding: const EdgeInsets.only(
//           left: 20,
//           right: 10,
//           top: 10,
//         ),
//         child: ListView.builder(
//           itemBuilder: (context, index) {
//             return const NewestListViewItem(bookModel: state.books.[index] ,);
//           },
//           itemCount: 10,
//           padding: EdgeInsets.zero,
//         ),
//       ),
//     );
//   }
// }
