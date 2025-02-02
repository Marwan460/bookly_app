import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  final int rating;
  final int numOfReviews;
  final MainAxisAlignment mainAxisAlignment;
  const BookRating({super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.numOfReviews});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Colors.yellow.shade700,size: 14,),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          rating.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 9),
        Text(
          numOfReviews.toString(),
          style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),
        )
      ],
    );
  }
}
