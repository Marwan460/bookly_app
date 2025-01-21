import 'package:flutter/material.dart';

import '../../../../../res/assets_res.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.4,
      height: MediaQuery.sizeOf(context).height * 0.28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(image: AssetImage(AssetsRes.TEST)),
      ),
    );
  }
}
