import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/features/home/presentation/manger/featured_book_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manger/featured_book_cubit/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
              getIt.registerSingleton<HomeRepoImplementation>(
                  HomeRepoImplementation(getIt.get<ApiServices>()))),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
              getIt.registerSingleton<HomeRepoImplementation>(
                  HomeRepoImplementation(getIt.get<ApiServices>()))),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: KPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        // home: const SplashView()); because I used material app.router instead of get material app
      ),
    );
  }
}
