import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kbookDetailsView, extra: bookModel);
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 5),
            child: SizedBox(
              height: 115,
              child: Row(
                children: [
                  CustomBookImage(
                      imageUrl:
                          bookModel.volumeInfo.imageLinks?.thumbnail ?? ''),
                  // AspectRatio(
                  //   aspectRatio: 3 / 5,
                  //   child: Container(
                  //     width: 100,
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(16),
                  //         color: Colors.red,
                  //         image: const DecorationImage(
                  //           fit: BoxFit.fill,
                  //           image: AssetImage(AssetsDate.testImage),
                  //         )),
                  //   ),
                  // ),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .5,
                          child: Text(
                            bookModel.volumeInfo.title!,
                            style: Styles.textStyle20,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          bookModel.volumeInfo.authors![0],
                          style: Styles.textStyle14,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Free',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  decoration: TextDecoration.none),
                            ),
                            const Spacer(),
                            BookRating(
                              rating: bookModel.volumeInfo.maturityRating!,
                              count: bookModel.volumeInfo.hashCode,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
