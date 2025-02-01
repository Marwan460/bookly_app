import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(bottom: 40,left: 5, right: 5),
              child: CustomBookImage(imageUrl: 'http://books.google.com/books/content?id=SSrHDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api',),
            );
          }),
    );
  }
}
