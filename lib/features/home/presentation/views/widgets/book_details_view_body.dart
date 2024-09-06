import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import 'book_details_section.dart';
import 'custom_book_details_app_bar.dart';
import 'similar_book_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookmodel});
  final BookModel bookmodel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const customBookDetailsAppBar(),
              BookDetailsSection(bookmodel: bookmodel),
              const Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              const SimilarBookSection()
            ],
          ),
        )
      ],
    );
  }
}
