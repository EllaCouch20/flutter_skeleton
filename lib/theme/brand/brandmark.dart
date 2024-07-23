import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skeleton/theme/stylesheet.dart';

class BrandMark extends StatelessWidget {
  final double size;

  const BrandMark({
    super.key,
    this.size = BrandMarkSize.lg,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      ThemeIcon.brandmark,
      width: size,
      height: size,
    );
  }
}
