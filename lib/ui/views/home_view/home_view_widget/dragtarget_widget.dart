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
      required this.dataDisplay,
      required this.index});

  final int index;
  final String text;
  final List dataDisplay;

  final HomeViewController controller = Get.put(HomeViewController());

  @override
  Widget build(BuildContext context) {
    return DragTarget(
      builder: (context, List<dynamic> candidateData, rejectedData) {
        return Column(
          children: [
            CustomContainer(
              text: text,
              heightContainer: screenHeight(10),
            ),
            (screenHeight(30)).ph,
            Column(
              children: List.generate(dataDisplay.length, (index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: screenWidth(10)),
                  child: CustomContainer(
                    text: dataDisplay[index],
                    showIconRemove: true,
                    onTap: () {
                      controller.removeFromClass(
                          dataDisplay[index],this.index);
                    },
                  ),
                );
              }),
            )
          ],
        );
      },
      onAccept: (String data) {
        controller.updateData(data,index);
      },
    );
  }
}
