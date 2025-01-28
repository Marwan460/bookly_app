import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 38),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: AppColors.white,
              textColor: AppColors.black,
              text: '19.99€',
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                topLeft: Radius.circular(12),
              ),
              fontSize: 20,
            ),
          ),
          Expanded(
            child: CustomButton(
              backgroundColor: AppColors.buttonColor,
              textColor: AppColors.white,
              text: 'Free preview',
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
