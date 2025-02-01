import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manger/featured_books/featured_books_cubit.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.36,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 40, left: 8, right: 8),
                    child: CustomBookImage(imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,),
                  );
                }),
          );
        } else if (state is FeaturedBooksFailure) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: CustomErrorWidget(errMessage: state.errMessage),
            ),
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
