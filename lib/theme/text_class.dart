// ignore_for_file: overridden_fields, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:itmo_memory/theme/theme.dart';

const _fontMuller = 'Muller';

// ignore: must_be_immutable
class TextClass extends TextStyle {
  TextClass()
      : fontWeight = FontWeight.normal,
        fontFamily = _fontMuller,
        color = DarkText.primary,
        fontStyle = FontStyle.normal,
        letterSpacing = null,
        height = 1,
        fontSize = 17;

  @override
  Color color;
  @override
  FontWeight fontWeight;
  @override
  double fontSize;
  @override
  double? letterSpacing;
  @override
  double height;
  @override
  String fontFamily;
  @override
  FontStyle fontStyle;
  @override
  TextDecoration decoration = TextDecoration.none;

  // font style for canteen order num
  /// 72 | .37 | sfProDisplay
  void get largeTitleRegular_unregistered {
    fontSize = 72;
    letterSpacing = .0037;
    height = 86 / fontSize;
    fontFamily = 'Muller';
    fontStyle = FontStyle.normal;
    fontWeight = FontWeight.bold;
  }

  void get lineTitleBG {
    fontFamily = 'Muller';
    fontStyle = FontStyle.normal;
    fontWeight = FontWeight.bold;
    fontSize = 55;
    height = 56 / fontSize;
    letterSpacing = -0.02;
  }

  void get largeTitleRegular {
    fontFamily = 'Muller';
    fontStyle = FontStyle.normal;
    fontWeight = FontWeight.normal;
    fontSize = 34;
    height = 41 / fontSize;
    letterSpacing = 0.0037;
  }

  /// 34 | .37 | sfProDisplay
  void get largeTitleBold {
    fontFamily = 'Muller';
    fontStyle = FontStyle.normal;
    fontWeight = FontWeight.bold;
    fontSize = 34;
    height = 41 / fontSize;
    letterSpacing = 0.0037;
  }

  /// 28 | .36 | sfProDisplay
  void get title1Regular {
    fontFamily = 'Muller';
    fontStyle = FontStyle.normal;
    fontWeight = FontWeight.normal;
    fontSize = 28;
    height = 34 / fontSize;
    letterSpacing = 0.0036;
  }

  void get title1Bold {
    fontFamily = 'Muller';
    fontStyle = FontStyle.normal;
    fontWeight = FontWeight.bold;
    fontSize = 28;
    height = 34 / fontSize;
    letterSpacing = 0.0036;
  }

  void get title2Regular {
    fontFamily = 'Muller';
    fontStyle = FontStyle.normal;
    fontWeight = FontWeight.normal;
    fontSize = 22;
    height = 28 / fontSize;
    letterSpacing = 0.0035;
  }

  void get title2Bold {
    fontFamily = 'Muller';
    fontStyle = FontStyle.normal;
    fontWeight = FontWeight.bold;
    fontSize = 22;
    height = 28 / fontSize;
    letterSpacing = 0.0035;
  }

  void get title3Regular {
    fontFamily = 'Muller';
    fontStyle = FontStyle.normal;
    fontWeight = FontWeight.normal;
    fontSize = 20;
    height = 24 / fontSize;
    letterSpacing = 0.0038;
  }

  void get title3Bold {
    fontFamily = 'Muller';
    fontStyle = FontStyle.normal;
    fontWeight = FontWeight.bold;
    fontSize = 20;
    height = 24 / fontSize;
    letterSpacing = 0.0038;
  }

  void get bodyRegular {
    fontSize = 17;
    letterSpacing = -.0041;
    height = 22 / fontSize;
    fontFamily = 'SFProTextRegular';
  }

  void get bodySemibold {
    fontFamily = 'SFProTextSemibold';
    fontSize = 17;
    height = 22 / fontSize;
    letterSpacing = -.0041;
  }

  /// 16 | -.32 | sfProText
  void get calloutRegular {
    fontSize = 16;
    letterSpacing = -.0032;
    height = 21 / fontSize;
    fontFamily = 'SFProTextRegular';
  }

  void get calloutSemibold {
    fontSize = 16;
    letterSpacing = -.0032;
    height = 21 / fontSize;
    fontFamily = 'SFProTextSemibold';
  }

  /// 15 | -.24 | sfProText
  void get subheadLineRegular {
    fontSize = 15;
    letterSpacing = -.0024;
    height = 20 / fontSize;
    fontFamily = 'SFProTextRegular';
  }

  void get subheadLineSemibold {
    fontSize = 15;
    letterSpacing = -.0024;
    height = 20 / fontSize;
    fontFamily = 'SFProTextSemibold';
  }

  /// 13 | -.08 | sfProText
  void get footnoteRegular {
    fontSize = 13;
    letterSpacing = -.0008;
    height = 18 / fontSize;
    fontFamily = 'SFProTextRegular';
  }

  void get footnoteSemibold {
    fontSize = 13;
    letterSpacing = -.0008;
    height = 18 / fontSize;
    fontFamily = 'SFProTextSemibold';
  }

  /// 12 | 0 | sfProText
  void get caption1Regular {
    fontSize = 12;
    letterSpacing = 0;
    height = 16 / fontSize;
    fontFamily = 'SFProTextRegular';
  }

  void get caption1Medium {
    fontSize = 12;
    letterSpacing = 0;
    height = 16 / fontSize;
    fontFamily = 'SFProTextMedium';
  }

  void get caption1Italic {
    fontSize = 12;
    letterSpacing = 0;
    height = 16 / fontSize;
    fontFamily = 'SFProTextRegular';
    fontStyle = FontStyle.italic;
  }

  /// 11 | .07 | sfProText
  void get caption2Regular {
    fontSize = 11;
    letterSpacing = .0007;
    height = 13 / fontSize;
    fontFamily = 'SFProTextRegular';
  }

  void get caption2Semibold {
    fontSize = 11;
    letterSpacing = .0007;
    height = 13 / fontSize;
    fontFamily = 'SFProTextSemibold';
  }

  void get caption2Italic {
    fontSize = 11;
    letterSpacing = .0007;
    height = 13 / fontSize;
    fontFamily = 'SFProTextRegular';
    fontStyle = FontStyle.italic;
  }

  void get dark_primary {
    color = DarkText.primary;
  }

  void get dark_secondary {
    color = DarkText.secondary;
  }

  void get dark_tertiary {
    color = DarkText.tertiary;
  }

  void get dark_quatemary {
    color = DarkText.quaternary;
  }

  void get light_primary {
    color = LightText.primary;
  }

  void get light_secondary {
    color = LightText.secondary;
  }

  void get light_tertiary {
    color = LightText.tertiary;
  }

  void get light_quatemary {
    color = LightText.quaternary;
  }

  void get general_blue {
    color = General.blue;
  }

  void get general_pink {
    color = General.pink;
  }

  void withOpacity(double opacity) {
    color = color.withOpacity(opacity);
  }

  void get general_gray {
    color = General.gray;
  }

  void get additional_red {
    color = Additional.red;
  }

  void get additional_red_light {
    color = Additional.redLite;
  }

  void get additional_orange {
    color = Additional.orange;
  }

  void get additional_orange_light {
    color = Additional.orangeLite;
  }

  void get additional_yellow {
    color = Additional.yellow;
  }

  void get additional_yellow_light {
    color = Additional.yellowLite;
  }

  void get additional_green {
    color = Additional.green;
  }

  void get additional_green_light {
    color = Additional.greenLite;
  }

  void get additional_azure {
    color = Additional.azure;
  }

  void get additional_azure_light {
    color = Additional.azureLite;
  }

  void get additional_purple {
    color = Additional.purple;
  }

  void get additional_purple_light {
    color = Additional.purpleLite;
  }

  void get base_black {
    color = Base.black;
  }

  void get base_white {
    color = Base.white;
  }

  void get messages_lightGrey {
    color = Messages.lightGrey;
  }
}
