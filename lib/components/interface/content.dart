import 'package:flutter/material.dart';
import 'package:skeleton/theme/stylesheet.dart';

class Content extends StatelessWidget {
  final Widget content;

  const Content({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppPadding.content),
      width: MediaQuery.sizeOf(context).width,
      child: content,
    );
  }
}
