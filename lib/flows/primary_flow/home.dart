import 'package:flutter/material.dart';
import 'package:skeleton/components/interface/header.dart';
import 'package:skeleton/components/interface/default_interface.dart';
import 'package:skeleton/components/interface/content.dart';
import 'package:skeleton/theme/custom/custom_text.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultInterface(
        header: primaryHeader(context, 'Flutter Skeleton'),
        content: const Content(
          content: Center(
            child: CustomText(
                text:
                    'This project provides the basic structure of a Flutter application, including essential components and theme configurations.'),
          ),
        ),
      ),
    );
  }
}
