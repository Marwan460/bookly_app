import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/splash/presentation/view/splash_view.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AppColors.primary, textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      home: const SplashView(),
    );
  }
}
