import 'package:flutter/material.dart';
import 'package:skeleton/theme/stylesheet.dart';

class DefaultListItem extends StatelessWidget {
  final Widget? topLeft;
  final Widget? bottomLeft;
  final Widget? topRight;
  final Widget? bottomRight;
  final VoidCallback? onTap;

  const DefaultListItem({
    super.key,
    this.topLeft,
    this.bottomLeft,
    this.topRight,
    this.bottomRight,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: AppPadding.listItem),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (topLeft != null) topLeft!,
                    if (bottomLeft != null) bottomLeft!,
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (topRight != null) topRight!,
                if (bottomRight != null) bottomRight!,
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ImageListItem extends StatelessWidget {
  final Widget? left;
  final Widget? topRight;
  final Widget? bottomRight;
  final VoidCallback? onTap;

  const ImageListItem({
    super.key,
    this.left,
    this.topRight,
    this.bottomRight,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: AppPadding.listItem),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: (left != null) ? left! : Container(),
            ),
            const Spacing(width: AppPadding.listItem),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (topRight != null) topRight!,
                if (bottomRight != null) bottomRight!,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
