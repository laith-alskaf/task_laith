import 'package:flutter/material.dart';
import 'package:task/ui/shared/colors.dart';
import 'package:task/ui/shared/custom_widgets/custom_text.dart';
import 'package:task/ui/shared/extensions/custom_sized_box_shared.dart';
import 'package:task/ui/shared/utils.dart';

class CustomRowText extends StatelessWidget {
  const CustomRowText(
      {super.key,
      required this.textOfDrop,
      this.isDecoration = false,
      required this.index});

  final List textOfDrop;
  final int index;
  final bool? isDecoration;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(textOfDrop.length, (index) {
      return Padding(
        padding: EdgeInsets.symmetric(
            vertical: screenWidth(60), horizontal: screenWidth(50)),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              textDirection: TextDirection.rtl,
              children: [
                CustomText(
                    text: '_ ${index + 1}' ?? '_ 1',
                    fontsize: width * 0.04,
                    fontWeight: FontWeight.bold,
                    textcolor: AppColors.colorDropData),
                (screenWidth(90)).pw,
                Expanded(
                  flex: 10,
                  child: CustomText(
                    maxLine: 2,
                    text: textOfDrop[index],
                    textcolor: AppColors.colorDropData,
                    fontsize: width * 0.04,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                InkWell(
                    onTap: () {
                      homeController.removeFromClass(
                          textOfDrop[index], this.index);
                    },
                    child: Icon(
                      Icons.highlight_remove,
                      color: AppColors.whiteColor,
                      size: screenWidth(18),
                    )),
              ],
            ),
            Divider(
              thickness: screenWidth(90),
              color: AppColors.whiteColor,
            ),
          ],
        ),
      );
    }));
  }
}
