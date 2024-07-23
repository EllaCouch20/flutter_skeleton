import 'package:flutter/material.dart';
import 'package:skeleton/theme/stylesheet.dart';
import 'package:skeleton/flows/primary_flow/home.dart';

/* 
This project is the bare bones of a flutter project, 
containing basic interface, interaction and organization components

Using this skeleton:
1. In your home directory, open the command line and run
  flutter create project_name
2. Move the library folder and the assets folder over into your new project

Configuring your new project:
1. Rename SkeletonProject to your app's name
2. Rename MaterialApp title to your project's name
3. Open stylesheet.dart and configure to your project's theme
*/

class SkeletonProject extends StatelessWidget {
  const SkeletonProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Skeleton',
      theme: theme(),
      home: const Home(),
    );
  }
}

void main() => runApp(const SkeletonProject());
