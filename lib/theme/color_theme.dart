import 'package:flutter/cupertino.dart';

class Colours {
  Colours._();

  static const blue = Color(0xFF1846C7);
  static const pink = Color(0xFFEE215B);
}

class ISColors {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  ISColors._();

  /// 000, 0%
  static const transparent = Color(0x00000000);
}

class DarkText {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  DarkText._();

  /// 333333, 100%
  static const Color primary = Color(0xFF333333);

  /// 323439, 60%
  static const Color secondary = Color(0x99323439);

  /// 323439, 30%
  static const Color tertiary = Color(0x4D323439);

  /// 323439, 18%
  static const Color quaternary = Color(0x2E323439);
}

class LightText {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  LightText._();

  /// FFFFFF, 100%
  static const Color primary = Color(0xFFFFFFFF);

  /// F6F8F,  60%
  static const Color secondary = Color(0x99F6F8FD);

  /// F6F8F,  30%
  static const Color tertiary = Color(0x4DF6F8FD);

  /// F6F8F,  16%
  static const Color quaternary = Color(0x29F6F8FD);
}

class IsIcons {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  IsIcons._();

  /// 1846C7, 100%
  static const Color active = Color(0xFF1846C7);

  /// 99A2AD, 100%
  static const Color base = Color(0xFF99A2AD);

  /// 99A2AD, 40%
  static const Color inactive = Color(0x6699A2AD);
}

class General {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  General._();

  /// 1846C7, 100%
  static const Color blue = Color(0xFF1846C7);

  /// 1846C7, 75%
  static const Color blueA75 = Color(0xBF1846C7);

  /// 1846C7, 50%
  static const Color blueA50 = Color(0x801846C7);

  /// 1846C7, 25%
  static const Color blueA25 = Color(0x401846C7);

  /// 2F59CD, 100%
  static const Color blueLite = Color(0xFF2F59CD);

  /// EE215B, 100%
  static const Color pink = Color(0xFFEE215B);

  /// EE215B, 75%
  static const Color pinkA75 = Color(0xBFEE215B);

  /// EE215B, 50%
  static const Color pinkA50 = Color(0x80EE215B);

  /// EE215B, 25%
  static const Color pinkA25 = Color(0x40EE215B);

  /// F0376B, 100%
  static const Color pinkLite = Color(0xFFF0376B);

  /// 333333, 100%
  static const Color gray = Color(0xFF333333);

  /// 333333, 75%
  static const Color grayA75 = Color(0xBF333333);

  /// 333333, 50%
  static const Color grayA50 = Color(0x80333333);

  /// 333333, 25%
  static const Color grayA25 = Color(0x40333333);

  /// 333333, 12%
  static const Color grayA12 = Color(0x1F333333);

  /// 474747, 100%
  static const Color grayLite = Color(0xFF474747);
}

class Additional {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  Additional._();

  /// E02E2E, 100%
  static const Color red = Color(0xFFE02E2E);

  /// E34343, 100%
  static const Color redLite = Color(0xFFE34343);

  /// FA6400, 100%
  static const Color orange = Color(0xFFFA6400);

  /// FB741A, 100%
  static const Color orangeLite = Color(0xFFFB741A);

  /// F7B500, 100%
  static const Color yellow = Color(0xFFF7B500);

  /// F8BC1A, 100%
  static const Color yellowLite = Color(0xFFF8BC1A);

  /// 22B217, 100%
  static const Color green = Color(0xFF22B217);

  /// 38BA2E, 100%
  static const Color greenLite = Color(0xFF38BA2E);

  /// 0091FF, 100%
  static const Color azure = Color(0xFF0091FF);

  /// 1A9CFF, 100%
  static const Color azureLite = Color(0xFF1A9CFF);

  /// A50AFF, 100%
  static const Color purple = Color(0xFFA50AFF);

  /// AE23FF, 100%
  static const Color purpleLite = Color(0xFFAE23FF);
}

class Base {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  Base._();

  /// 000, 100%
  static const Color black = Color(0xFF000000);

  /// FFF, 100%
  static const Color white = Color(0xFFFFFFFF);
}

class Messages {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  Messages._();

  /// E8E8E9, 100%
  static const Color lightGrey = Color(0xFFE8E8E9);
}

class Elevation {
  static List<BoxShadow> shadow(Color color, int size) => <BoxShadow>[
        if (size == 0)
          BoxShadow(
            color: color.withOpacity(0.5),
            offset: const Offset(0, 2),
            blurRadius: 8,
          )
        else
          BoxShadow(
            color: color.withOpacity(0.08),
            offset: const Offset(0, 8),
            blurRadius: 24,
            spreadRadius: 4,
          ),
      ].toList();

  static final purple_8px = shadow(Additional.purple, 0);
  static final azure_8px = shadow(Additional.azure, 0);
  static final red_8px = shadow(Additional.red, 0);
  static final orange_8px = shadow(Additional.orange, 0);
  static final yellow_8px = shadow(Additional.yellow, 0);
  static final green_8px = shadow(Additional.green, 0);
  static final pink_8px = shadow(General.pink, 0);
  static final blue_8px = shadow(General.blue, 0);
  static final gray_8px = shadow(General.gray, 0);
  static final general_24px = shadow(General.gray, 1);

  static final List<BoxShadow> general_32px = [
    BoxShadow(
      color: General.gray.withOpacity(0.12),
      offset: const Offset(0, -24),
      blurRadius: 32,
      spreadRadius: 4,
    )
  ];
}
