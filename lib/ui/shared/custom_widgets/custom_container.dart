import 'package:flutter/material.dart';
import 'package:task/ui/shared/colors.dart';
import 'package:task/ui/shared/custom_widgets/custom_row_text.dart';
import 'package:task/ui/shared/custom_widgets/custom_text.dart';
import 'package:task/ui/shared/extensions/custom_sized_box_shared.dart';
import 'package:task/ui/shared/utils.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      this.widthContainer,
      required this.text,
      this.color,
      this.textOfDrop,
      this.index,
      this.fontSizeText});

  final String text;
  final List? textOfDrop;
  final double? widthContainer;
  final double? fontSizeText;
  final int? index;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color ?? AppColors.darkPurpleColor,
        ),
        width: widthContainer ?? screenWidth(2.7),
        child: Column(
          children: [
            (screenWidth(20)).ph,
            Center(
                child: CustomText(
              fontsize: fontSizeText,
              fontWeight: FontWeight.bold,
              text: text,
              textcolor: AppColors.whiteColor,
            )),
            (screenWidth(30)).ph,
            textOfDrop != null
                ? CustomRowText(
                    index: index ?? 1,
                    textOfDrop: textOfDrop ?? ['جافا'],
                  )
                : const SizedBox(),
            (screenWidth(30)).ph,
          ],
        ));
  }
}
