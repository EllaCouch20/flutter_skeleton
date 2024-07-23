import 'package:flutter/material.dart';

import 'package:skeleton/theme/stylesheet.dart';

import 'package:skeleton/theme/custom/custom_text.dart';
import 'package:skeleton/components/interactive/tip_buttons.dart';

class DataItem extends StatelessWidget {
  final String title;
  final int? listNum;
  final Widget content;
  final List<String>? buttonNames;
  final List<VoidCallback>? buttonActions;
  final List<String>? buttonIcons;

  const DataItem({
    super.key,
    required this.title,
    this.listNum,
    required this.content,
    this.buttonNames,
    this.buttonActions,
    this.buttonIcons,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width - 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          listNum != null
              ? Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 32,
                      width: 32,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: ThemeColor.bgSecondary,
                      ),
                      child: CustomText(
                        textType: 'heading',
                        textSize: TextSize.h6,
                        text: listNum.toString(),
                      ),
                    ),
                    const Spacing(width: AppPadding.bumper),
                  ],
                )
              : Container(),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    alignment: TextAlign.left,
                    text: title,
                    textSize: TextSize.h5,
                    textType: 'heading',
                  ),
                  content,
                  buttonNames != null &&
                          buttonActions != null &&
                          buttonNames!.length == 1
                      ? ButtonTip(
                          buttonNames![0],
                          buttonIcons == null
                              ? ThemeIcon.edit
                              : buttonIcons![0],
                          buttonActions![0],
                        )
                      : buttonNames != null &&
                              buttonActions != null &&
                              buttonNames!.length == 2
                          ? Row(
                              children: [
                                ButtonTip(
                                  buttonNames![0],
                                  buttonIcons == null
                                      ? ThemeIcon.edit
                                      : buttonIcons![0],
                                  buttonActions![0],
                                ),
                                const Spacing(width: 8),
                                ButtonTip(
                                  buttonNames![1],
                                  buttonIcons == null
                                      ? ThemeIcon.edit
                                      : buttonIcons![1],
                                  buttonActions![1],
                                ),
                              ],
                            )
                          : Container(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
