import 'package:bookly_app/features/home/presentation/view/widgets/books_details_section.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom-book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: CustomBookDetailsAppBar(),
          ),
          SizedBox(
            height: 30,
          ),
          BooksDetailsSection(),
          SizedBox(
            height: 50,
          ),
          SimilarBooksSection(),
        ],
      ),
    );
  }
}
