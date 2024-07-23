import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Adds new widget to the stack
Future<void> navigateTo(BuildContext context, Widget widget,
    [bool delay = false]) async {
  FocusScope.of(context).unfocus();
  if (delay) {
    await Future.delayed(const Duration(milliseconds: 250));
  }
  if (context.mounted) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => widget,
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      ),
    );
  }
}

// Removes top widget from the stack
Future<void> navPop(BuildContext context, [bool delay = false]) async {
  FocusScope.of(context).unfocus();
  if (delay) {
    await Future.delayed(const Duration(milliseconds: 250));
  }
  if (context.mounted) Navigator.pop(context);
}

// Switches current page with new page, doesn't add or remove from stack
Future<void> switchPageTo(BuildContext context, Widget widget,
    [bool delay = false]) async {
  FocusScope.of(context).unfocus();
  if (delay) {
    await Future.delayed(const Duration(milliseconds: 250));
  }
  if (context.mounted) {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => widget,
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      ),
    );
  }
}

// Removes pages from the stack until back at inputted widget
Future<void> resetNavTo(BuildContext context, Widget widget,
    [bool delay = false]) async {
  FocusScope.of(context).unfocus();
  if (delay) {
    await Future.delayed(const Duration(milliseconds: 250));
  }
  if (context.mounted) {
    Navigator.pushAndRemoveUntil(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => widget,
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        ),
        (route) => false);
  }
}

//Retrieves clipboard content
Future<String?> getClipBoardData() async {
  ClipboardData? data = await Clipboard.getData(Clipboard.kTextPlain);
  if (data != null) return data.text;
  return 'null';
}
