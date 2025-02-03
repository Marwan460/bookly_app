import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manger/similar_books/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if(state is SimilarBooksLoading){
          return const CustomLoadingIndicator();
        } else if(state is SimilarBooksSuccess){
          return SizedBox(
            height: MediaQuery
                .sizeOf(context)
                .height * 0.2,
            child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 40, left: 5, right: 5),
                    child: CustomBookImage(imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,),
                  );
                }),
          );
        } else if(state is SimilarBooksFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomErrorWidget(errMessage: "There is no books");
        }
      },
    );
  }
}
