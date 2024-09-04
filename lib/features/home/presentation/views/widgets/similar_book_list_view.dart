import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        itemCount: 10, // Number of items in the list
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CustomBookImage(
              imageUrl:
                  'https://images.search.yahoo.com/search/images;_ylt=AwrEteYYL9hmOxEN5lyJzbkF;_ylu=c2VjA3NlYXJjaARzbGsDYnV0dG9u;_ylc=X1MDOTYwNjI4NTcEX3IDMgRmcgNtY2FmZWUEZnIyA3A6cyx2OmksbTpzYi10b3AEZ3ByaWQDMkI2ZlJfZ2NTY09LbGZfUHcwcGhZQQRuX3JzbHQDMARuX3N1Z2cDMARvcmlnaW4DaW1hZ2VzLnNlYXJjaC55YWhvby5jb20EcG9zAzAEcHFzdHIDBHBxc3RybAMwBHFzdHJsAzIzBHF1ZXJ5A2ltYWdlJTIwYm9vayUyMHByb2dyYW1taW5nJTIwBHRfc3RtcAMxNzI1NDQzODc5?p=image+book+programming+&fr=mcafee&fr2=p%3As%2Cv%3Ai%2Cm%3Asb-top&ei=UTF-8&x=wrt#id=3&iurl=http%3A%2F%2Fprodimage.images-bn.com%2Fpimages%2F9781593279509_p0_v2_s1200x630.jpg&action=click');
        },
      ),
    );
  }
}
