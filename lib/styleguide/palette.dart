import 'package:flutter/material.dart';
class Palette {
  static const MaterialColor kToDark = const MaterialColor(
    0xFFAFC8EE, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xFF416497),//10%
      100: const Color(0xFF416497),//20%
      200: const Color(0xFF416497),//30%
      300: const Color(0xFF416497),//40%
      400: const Color(0xff4c2473),//50%
      500: const Color(0xff491d5c),//60%
      600: const Color(0xff2e1645),//70%
      700: const Color(0xff1e0e2e),//80%
      800: const Color(0xff100717),//90%
      900: const Color(0xff000000),//100%
    },
  );
}