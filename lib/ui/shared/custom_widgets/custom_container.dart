import 'package:flutter/material.dart';
import 'package:task/ui/shared/colors.dart';
import 'package:task/ui/shared/custom_widgets/custom_text.dart';
import 'package:task/ui/shared/utils.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      this.widthContainer,
      required this.text,
      this.color,
      this.heightContainer,
      this.onTap,
      this.showIconRemove = false});

  final String text;
  final Function()? onTap;
  final double? widthContainer;
  final double? heightContainer;
  final Color? color;
  final bool? showIconRemove;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color ?? AppColors.darkPurpleColor,
          ),
          height: heightContainer ?? screenHeight(16),
          width: widthContainer ?? screenWidth(3),
          child: Center(
              child: CustomText(
            text: text,
            textcolor: AppColors.whiteColor,
          )),
        ),
        showIconRemove ?? false
            ? Positioned(
                child: InkWell(
                    onTap: onTap,
                    child: Icon(
                      Icons.remove_circle_outlined,
                      size: screenWidth(15),
                    )))
            : const SizedBox(),
      ],
    );
  }
}
