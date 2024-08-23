import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinganimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const HomeView(),
          transition: Transition.leftToRight, duration: KTranstionDuration);
    });
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidinganimation =
        Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
    slidinganimation.addListener(() {
      // setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsDate.logo),
        const SizedBox(
          height: 7,
        ),
        SlidingAnimation(slidinganimation: slidinganimation)
      ],
    );
  }
}

class SlidingAnimation extends StatelessWidget {
  const SlidingAnimation({
    super.key,
    required this.slidinganimation,
  });

  final Animation<Offset> slidinganimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation:
          slidinganimation, //istead of setstate because it rebuild whole widets
      builder: (context, _) {
        return SlideTransition(
          position: slidinganimation,
          child: const Center(
            child: Text(
              'Read Free Books',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
            ),
          ),
        );
      },
    );
  }
}


// class SlidingText extends StatelessWidget {
//   const SlidingText({
//     super.key,
//     required this.slidinganimation,
//   });

//   final Animation<Offset> slidinganimation;

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//         animation:
//             slidinganimation, //istead of setstate because it rebuild whole widets
//         builder: (context, _) {
//           return SlideTransition(
//             position: slidinganimation,
//             child: const Center(
//               child: Text(
//                 'Read Free Books',
//                 style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
//               ),
//             ),
//           );
//         });
//   }
// }
