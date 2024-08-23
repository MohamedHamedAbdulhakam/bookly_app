import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: FeaturedBooksListView(),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text('Best Seller', style: Styles.textStyle18),
        ),
        BestSellerListViewItem(),
      ],
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: SizedBox(
            height: 100,
            child: Row(
              children: [
                AspectRatio(
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
                Column(
                  children: [
                    Text('Harry Potter and the globlet of fire',
                        style: Styles.textStyle20.copyWith()),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
