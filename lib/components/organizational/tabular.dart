import 'package:flutter/material.dart';
import 'package:skeleton/theme/stylesheet.dart';
import 'package:skeleton/theme/custom/custom_text.dart';

class SingleTab extends StatelessWidget {
  final String title;
  final String subtitle;

  const SingleTab({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.tab),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: title,
            textSize: TextSize.sm,
            color: ThemeColor.textSecondary,
          ),
          CustomText(
            text: subtitle,
            textSize: TextSize.sm,
            color: ThemeColor.textSecondary,
          )
        ],
      ),
    );
  }
}

Widget exampleTabularGroup(BuildContext context, String fn, String ln) {
  return Column(
    children: [
      SingleTab(title: "First name", subtitle: fn),
      SingleTab(title: "Last name", subtitle: ln),
    ],
  );
}
