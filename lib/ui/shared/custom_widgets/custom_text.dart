import 'package:flutter/material.dart';
import 'package:task/ui/shared/colors.dart';
import 'package:task/ui/shared/utils.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      this.textcolor,
      this.fontsize,
      this.fontWeight,
      this.isDecoration = false,
      this.isTextAlignCenter = false,
      this.heighText,
      this.maxLine});

  final String text;
  final double? fontsize;
  final Color? textcolor;
  final bool isDecoration;
  final bool? isTextAlignCenter;
  final FontWeight? fontWeight;
  final double? heighText;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: isTextAlignCenter! ? TextAlign.center : TextAlign.right,
      maxLines: maxLine,
      overflow: TextOverflow.visible,
      style: TextStyle(
          height: heighText ?? 1.0,
          decoration: isDecoration ? TextDecoration.underline : null,
          color: textcolor ?? AppColors.blackColor,
          fontSize: fontsize ?? width * 0.035,
          fontWeight: fontWeight ?? FontWeight.w300),
    );
  }
}
