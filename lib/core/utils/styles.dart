import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static const textStyle18 = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.none,
    // fontStyle: FontStyle.normal););
  );
  static final textStyle20 = GoogleFonts.baskervville(
    textStyle: const TextStyle(
      color: Colors.white,
      fontSize: 20,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.bold,
    ),
  );
  static final textStyle30 = GoogleFonts.baskervville(
    textStyle: const TextStyle(
      color: Colors.white,
      fontSize: 30,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w500,
    ),
  );
  static var textStyle14 = TextStyle(
    // fontFamily: 'matemasie',

    color: Colors.white.withOpacity(.5),
    fontSize: 14,

    decoration: TextDecoration.none,
    // fontStyle: FontStyle.normal););
  );
  static const textStyle16 = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w500, //medium
    decoration: TextDecoration.none,

    // fontStyle: FontStyle.normal););
  );
}
