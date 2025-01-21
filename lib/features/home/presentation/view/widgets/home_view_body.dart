import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/featured_books_list_view.dart';
import 'package:flutter/cupertino.dart';

import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      CustomAppBar(),
      Padding(
        padding: EdgeInsets.only(left: 20),
        child: FeaturedBooksListView(),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          "Best Seller",
          style: Styles.titleMedium,
        ),
      )
    ]);
  }
}
