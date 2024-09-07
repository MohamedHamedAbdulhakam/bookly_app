import 'package:bookly_app/core/widgets/custom_bottom.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key, required this.bookmodel});
  final BookModel bookmodel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          const Expanded(
            child: CustomBottom(
              text: 'Free',
              backGroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12)),
            ),
          ),
          Expanded(
            child: CustomBottom(
              onpressed: () async {
                Uri uri = Uri.parse(bookmodel.volumeInfo.previewLink!);
                if (!await launchUrl(uri)) {
                  await launchUrl(
                      uri); //we brings//two lines from url pachages from google
                }
              },
              fontSize: 16,
              text: 'Free Preview',
              backGroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
            ),
          ),
        ],
      ),
    );
  }
}
