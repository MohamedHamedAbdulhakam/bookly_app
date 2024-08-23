import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: AspectRatio(
        aspectRatio: 3 / 5,
        child: Container(
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.red,
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AssetsDate.testImage),
              )),
        ),
      ),
    );
  }
}
