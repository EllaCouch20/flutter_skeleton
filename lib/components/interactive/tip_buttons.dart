import 'package:flutter/material.dart';
import 'package:skeleton/theme/stylesheet.dart';
import 'package:skeleton/theme/custom/custom_button.dart';

//padding constant: static const double tips = 8;

class ButtonTip extends StatelessWidget {
  final String text;
  final String icon;
  final VoidCallback? onTap;

  const ButtonTip(this.text, this.icon, this.onTap, {super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      buttonSize: ButtonSize.md,
      expand: false,
      variant: ButtonVariant.secondary,
      text: text,
      icon: icon,
      onTap: onTap,
    );
  }
}
