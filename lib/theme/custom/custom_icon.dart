import 'package:flutter/material.dart';
import 'package:skeleton/theme/stylesheet.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skeleton/theme/custom/custom_text.dart';

/*    Icons   */

class CustomIcon extends StatelessWidget {
  final String icon;
  final double iconSize;
  final Color iconColor;

  const CustomIcon({
    super.key,
    required this.icon,
    this.iconSize = IconSize.lg,
    this.iconColor = ThemeColor.primary,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      width: iconSize,
      height: iconSize,
      colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
    );
  }
}

/*    Number Pad    */

Widget numberButton(BuildContext context, String number) {
  return CustomText(
    text: number,
    textType: 'label',
    color: ThemeColor.primary,
  );
}

Widget deleteButton(BuildContext context) {
  return const CustomIcon(
    icon: ThemeIcon.back,
    iconSize: IconSize.md,
    iconColor: ThemeColor.primary,
  );
}
