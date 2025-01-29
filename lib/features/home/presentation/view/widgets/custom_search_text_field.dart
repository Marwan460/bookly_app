import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      enabledBorder: buildOutlineInputBorder(),
      focusedBorder: buildOutlineInputBorder(),
      hintText: "Search",
      suffixIcon: IconButton(
        onPressed: () {},
        icon: const Opacity(
            opacity: 0.6,
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            )),
      ),
    ));
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(
          color: AppColors.white,
        ));
  }
}
