import 'package:bookly_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../book_details_view.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .25),
        child: const CustomBookImage(
          imageUrl:
              'https://images.search.yahoo.com/search/images;_ylt=AwrEteYYL9hmOxEN5lyJzbkF;_ylu=c2VjA3NlYXJjaARzbGsDYnV0dG9u;_ylc=X1MDOTYwNjI4NTcEX3IDMgRmcgNtY2FmZWUEZnIyA3A6cyx2OmksbTpzYi10b3AEZ3ByaWQDMkI2ZlJfZ2NTY09LbGZfUHcwcGhZQQRuX3JzbHQDMARuX3N1Z2cDMARvcmlnaW4DaW1hZ2VzLnNlYXJjaC55YWhvby5jb20EcG9zAzAEcHFzdHIDBHBxc3RybAMwBHFzdHJsAzIzBHF1ZXJ5A2ltYWdlJTIwYm9vayUyMHByb2dyYW1taW5nJTIwBHRfc3RtcAMxNzI1NDQzODc5?p=image+book+programming+&fr=mcafee&fr2=p%3As%2Cv%3Ai%2Cm%3Asb-top&ei=UTF-8&x=wrt#id=3&iurl=http%3A%2F%2Fprodimage.images-bn.com%2Fpimages%2F9781593279509_p0_v2_s1200x630.jpg&action=click',
        ),
      ),
      const SizedBox(
        height: 43,
      ),
      Text('The Jungle Book',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold)),
      const SizedBox(
        height: 6,
      ),
      Opacity(
        opacity: .7,
        child: Text('Rudyard Kibling',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500)),
      ),
      const SizedBox(
        height: 18,
      ),
      const BookRating(
        rating: '5',
        count: 1200,
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      const SizedBox(
        height: 37,
      ),
      const BookActions(),
    ]);
  }
}
