import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/models/book_model/image_links.dart';
import 'package:bookly_app/features/home/data/models/book_model/volume_info.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentation/view/widgets/book_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            // child: BookListViewItem(
            //   bookModel: BookModel(
            //       volumeInfo: VolumeInfo(
            //           imageLinks: ImageLinks(
            //               smallThumbnail: 'smallThumbnail',
            //               thumbnail: 'thumbnail'))),
            // ),
            child: Column(),
          );
        });
  }
}
