import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'similar_book_list_view.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'you can also like',
            style: Styles.textStyle14
                .copyWith(fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SimilarBookListView(),
        ),
      ],
    );
  }
}
