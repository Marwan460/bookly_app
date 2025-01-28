import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom-book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: CustomBookDetailsAppBar(),
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.3),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
          ),
          const Text(
            "The Jungle Book",
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              "Rudyard Kipling",
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 37,
          ),
          const BooksAction(),
          const SizedBox(height: 50,),
          Text("You can also like",style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),),
          const SizedBox(height: 16,),
          const SimilarBooksListView()
        ],
      ),
    );
  }
}
