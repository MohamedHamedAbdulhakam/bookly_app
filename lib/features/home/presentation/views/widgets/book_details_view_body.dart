import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

import 'book_details_section.dart';
import 'similar_book_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              customBookDetailsAppBar(),
              BookDetailsSection(),
              Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              SimilarBookSection()
            ],
          ),
        )
      ],
    );
  }
}
