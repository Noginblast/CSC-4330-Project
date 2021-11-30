import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor kToLight = MaterialColor(
    0xffafc8ee,
    <int, Color>{
      50: Color(0xffb7cdef), //10%
      100: Color(0xffbfd3f1), //20%
      200: Color(0xffc7d8f3), //30%
      300: Color(0xffcfdef4), //40%
      400: Color(0xffd7e3f6), //50%
      500: Color(0xffdfe9f8), //60%
      600: Color(0xffe7eef9), //70%
      700: Color(0xffeff4fb), //80%
      800: Color(0xfff7f9fd), //90%
      900: Color(0xffffffff),
    },
  );

  static const MaterialColor kToDark = MaterialColor(
    // 0xff74a1e2, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    0xff74a1e2,
    <int, Color>{
      50: Color(0xff6890cb), //10%
      100: Color(0xff5c80b4), //20%
      200: Color(0xff51709e), //30%
      300: Color(0xff456087), //40%
      400: Color(0xff3a5071), //50%
      500: Color(0xff2e405a), //60%
      600: Color(0xff223043), //70%
      700: Color(0xff17202d), //80%
      800: Color(0xff0b1016), //90%
      900: Color(0xff000000), //100%
    },
  );

  static const MaterialColor oldToDark = MaterialColor(
    0xff4c2473, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xff8346d9), //10%
      100: Color(0xff793ab7), //20%
      200: Color(0xff6932a0), //30%
      300: Color(0xff5a2b89), //40%
      400: Color(0xff4c2473), //50%
      500: Color(0xff491d5c), //60%
      600: Color(0xff2e1645), //70%
      700: Color(0xff1e0e2e), //80%
      800: Color(0xff100717), //90%
      900: Color(0xff000000), //100%
    },
  );
}
