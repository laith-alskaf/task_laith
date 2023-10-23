import 'package:task/ui/views/home_view/home_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/ui/shared/custom_widgets/custom_container.dart';
import 'package:task/ui/shared/extensions/custom_sized_box_shared.dart';
import 'package:task/ui/shared/utils.dart';

class DragTargetWidget extends StatelessWidget {
  DragTargetWidget(
      {super.key,
      required this.text,
      // required this.dataDisplay,
      required this.index,
      this.onTap});

  final int index;
  final String text;
  // final List<String> dataDisplay;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return DragTarget(
      builder: (context, List<dynamic> candidateData, rejectedData) {
        return Column(
          children: [
            CustomContainer(fontSizeText: width*0.05,
              text: text,
              textOfDrop:  homeController.droppedData[index],
              index:index,
            ),
            (screenWidth(20)).ph,
          ],
        );
      },
      onAccept: (String data) {
        homeController.updateData(data, index);
      },
    );
  }
}
