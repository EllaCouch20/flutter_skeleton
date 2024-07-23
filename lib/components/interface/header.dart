import 'package:flutter/material.dart';
import 'package:skeleton/theme/stylesheet.dart';
import 'package:skeleton/theme/custom/custom_text.dart';
import 'package:skeleton/theme/custom/custom_button.dart';

class DefaultHeader extends StatelessWidget {
  final Widget? left;
  final Widget center;
  final Widget? right;
  final double height;

  const DefaultHeader({
    super.key,
    this.left,
    required this.center,
    this.right,
    this.height = 48,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: MediaQuery.sizeOf(context).width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 16),
            alignment: Alignment.centerLeft,
            child: left,
          ),
          Container(
            alignment: Alignment.center,
            child: center,
          ),
          Container(
            padding: const EdgeInsets.only(right: 16),
            alignment: Alignment.centerRight,
            child: right,
          ),
        ],
      ),
    );
  }
}

//    text    //
Widget primaryHeader(BuildContext context, String text) {
  return DefaultHeader(
    center: CustomText(
      textType: "heading",
      text: text,
      textSize: TextSize.h3,
      color: ThemeColor.heading,
    ),
  );
}

//←   text  next//
Widget stackButtonHeader(
    BuildContext context, String text, bool rightEnabled, rightText, rightOnTap,
    [iconButton]) {
  return DefaultHeader(
    left: iconButton == null ? backButton(context) : iconButton!,
    center: CustomText(
      textType: "heading",
      text: text,
      textSize: TextSize.h4,
      color: ThemeColor.heading,
    ),
    right: rightEnabled
        ? CustomButton(
            onTap: rightOnTap ?? () {},
            expand: false,
            text: rightText,
            variant: ButtonVariant.ghost,
            buttonSize: ButtonSize.md,
          )
        : null,
  );
}

Widget stackHeader(BuildContext context, String text, [iconButton]) {
  return DefaultHeader(
    left: iconButton == null ? backButton(context) : iconButton!,
    center: CustomText(
      textType: "heading",
      text: text,
      textSize: TextSize.h4,
      color: ThemeColor.heading,
    ),
  );
}
