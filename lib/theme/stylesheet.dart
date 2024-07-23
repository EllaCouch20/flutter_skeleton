// ignore_for_file: unused_field

import 'package:flutter/material.dart';

/* 

To configure branding:
1. Import brand mark into assets/icons as brand_mark.svg

To configure colors:
1. Define color codes in the ConstantColors class
2. Assign ConstantColors to their roles in ThemeColor class

To configure typography:
1. Import font family files into assets/fonts
2. In pubspec.yaml, set font family file import paths
3. In ThemeData, set fontFamily to imported font name
4. Set text sizes in the TextSize class
5. Define text types in the TextType class

To configure icons:
1. Import all icons into assets/icons
2. Define icons in the ThemeIcon class

*/

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: ThemeColor.bg,

    /* font family */
    fontFamily: "Outfit",
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    splashColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,
  );
}

/*    TEXT SIZE    */

class TextSize {
  static const double title = 74;
  static const double subtitle = 64;

  static const double xl = 24;
  static const double lg = 20;
  static const double md = 16;
  static const double sm = 14;
  static const double xs = 12;

  static const double h1 = 48;
  static const double h2 = 32;
  static const double h3 = 24;
  static const double h4 = 20;
  static const double h5 = 16;
  static const double h6 = 14;
}

class TextType {
  static const String header = "header";
  static const String label = "label";
  static const String text = "text";
}

/*    BRAND   */
class BrandMarkSize {
  static const double xxl = 74;
  static const double xl = 64;
  static const double lg = 48;
  static const double md = 32;
  static const double sm = 24;
  static const double xs = 16;
}

/*    COLORS    */

class ConstantColor {
  //Greys
  static const Color _black = Colors.black;
  static const Color _offBlack = Color(0xFF262626);
  static const Color _darkGrey = Color(0xFF525458);
  static const Color _grey = Color(0xFF8A8C93);
  static const Color _lightGrey = Color(0xFFD7D8E5);
  static const Color _offWhite = Color(0xFFF4F5F5);
  static const Color _white = Color(0xFFFFFFFF);

  //Colors
  static const Color _blue = Color(0xFF062678);
  static const Color _red = Colors.red;
}

class ThemeColor {
  //layout
  static const Color bg = ConstantColor._black;
  static const Color bgSecondary = ConstantColor._offBlack;
  static const Color border = ConstantColor._darkGrey;

  //text
  static const Color heading = ConstantColor._white;
  static const Color text = ConstantColor._lightGrey;
  static const Color textSecondary = ConstantColor._grey;

  //interactive
  static const Color primary = ConstantColor._white;
  static const Color handle = ConstantColor._black;
  static const Color colorHandle = ConstantColor._white;
  static const Color outline = ConstantColor._darkGrey;

  //special
  static const Color brand = ConstantColor._white;
  static const Color blue = ConstantColor._blue;
  static const Color danger = ConstantColor._red;
}

/*    ICONS   */

class ThemeIcon {
  //brand mark
  static const String brandmark = 'assets/icons/brand_mark.svg';

  //common icons
  static const String back = 'assets/icons/back.svg';
  static const String close = 'assets/icons/exit.svg';
  static const String edit = 'assets/icons/edit.svg';
  static const String info = 'assets/icons/info.svg';

  //directional icons
  static const String left = 'assets/icons/left.svg';
  static const String right = 'assets/icons/right.svg';
  static const String up = 'assets/icons/up.svg';
  static const String down = 'assets/icons/down.svg';

  //copy & paste
  static const String paste = 'assets/icons/paste.svg';
  static const String copy = 'assets/icons/copy.svg';

  //radio buttons
  static const String radio = 'assets/icons/radio.svg';
  static const String radioFilled = 'assets/icons/radio-filled.svg';

  //extra icons
  static const String error = 'assets/icons/error.svg';
  static const String profile = 'assets/icons/profile.svg';
  static const String home = 'assets/icons/home.svg';
  static const String send = 'assets/icons/send.svg';
}

class IconSize {
  static const double lg = 48;
  static const double md = 32;
}

/*    BUTTONS   */

class ButtonSize {
  static const double lg = 48;
  static const double md = 32;
}

/*    PADDINGS    */

class AppPadding {
  //interface
  static const double header = 16;
  static const double content = 24;
  static const double bumper = 16;
  static const double navBar = 64;

  //interaction
  static const double listItem = 16;
  static const double textInput = 12;

  //organizational
  static const double tab = 4;
  static const double dataItem = 16;

  //buttons
  static const buttonSpacing = [12, 8];
  static const button = [16, 12];
}

/*    BORDERS    */

class ThemeBorders {
  static final BorderRadius textInput = BorderRadius.circular(8);
  static final BorderRadius button = BorderRadius.circular(24);
}

class BoxDecorations {
  static RoundedRectangleBorder button = RoundedRectangleBorder(
    borderRadius: ThemeBorders.button,
  );

  static RoundedRectangleBorder buttonOutlined = RoundedRectangleBorder(
    side: const BorderSide(
      width: 1,
      color: ThemeColor.outline,
    ),
    borderRadius: ThemeBorders.button,
  );
}

/*    SPACINGS    */

class Spacing extends StatelessWidget {
  final double? width;
  final double? height;

  const Spacing({
    super.key,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
