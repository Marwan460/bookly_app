import 'package:bookly_app/features/home/presentation/view/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/book_model/book_model.dart';
import '../manger/similar_books/similar_books_cubit.dart';

class BookDetailsView extends StatefulWidget {
  final BookModel bookModel;

  const BookDetailsView({super.key, required this.bookModel});

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    super.initState();
    if (widget.bookModel.volumeInfo.categories != null &&
        widget.bookModel.volumeInfo.categories!.isNotEmpty) {

      BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.bookModel.volumeInfo.categories![0],
      );
    } else {
      const Text("There is no category");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsViewBody(bookModel: widget.bookModel,),
    );
  }
}
