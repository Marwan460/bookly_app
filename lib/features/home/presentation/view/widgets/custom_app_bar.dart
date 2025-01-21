import 'package:bookly_app/res/assets_res.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 44),
      child: Row(
        children: [
          Image.asset(AssetsRes.LOGO,height: 20,),
          const Spacer(),
          IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.magnifyingGlass,size: 24,)),
        ],
      ),
    );
  }
}
