import 'package:flutter/material.dart';
import 'package:skeleton/util.dart';

import 'package:skeleton/theme/stylesheet.dart';
import 'package:skeleton/theme/custom/custom_icon.dart';

import 'package:skeleton/flows/primary_flow/home.dart';

class TabNav extends StatelessWidget {
  final int index;

  const TabNav({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    void openA() {
      switchPageTo(context, const Home());
    }

    void openB() {
      switchPageTo(context, const Home());
    }

    return Container(
      padding: const EdgeInsets.all(AppPadding.bumper),
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                if (index == 1) openA();
              },
              child: Container(
                color: ThemeColor.bg,
                padding: const EdgeInsets.only(right: AppPadding.navBar / 2),
                alignment: Alignment.centerRight,
                child: CustomIcon(
                  icon: ThemeIcon.home,
                  iconSize: IconSize.md,
                  iconColor: (index == 0)
                      ? ThemeColor.primary
                      : ThemeColor.textSecondary,
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                if (index == 0) openB();
              },
              child: Container(
                color: ThemeColor.bg,
                padding: const EdgeInsets.only(left: AppPadding.navBar / 2),
                alignment: Alignment.centerLeft,
                child: CustomIcon(
                  icon: ThemeIcon.error,
                  iconSize: IconSize.md,
                  iconColor: (index == 1)
                      ? ThemeColor.primary
                      : ThemeColor.textSecondary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
