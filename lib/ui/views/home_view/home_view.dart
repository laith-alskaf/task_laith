import 'package:task/ui/shared/colors.dart';
import 'package:task/ui/shared/custom_widgets/custom_text.dart';
import 'package:task/ui/shared/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/ui/shared/extensions/custom_sized_box_shared.dart';
import 'package:task/ui/views/home_view/home_view_controller.dart';
import 'package:task/ui/views/home_view/home_view_widget/dragtarget_widget.dart';

import 'home_view_widget/draggable_widget.dart';

class MyView extends StatelessWidget {
 const MyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth(20), vertical: screenWidth(10)),
                child: Obx(
                  () => ListView(
                    children: [
                      homeController.listOfText.isEmpty
                          ? Center(
                              child: CustomText(
                                  text: 'List Of Text Is Empty',
                                  textcolor: AppColors.darkPurpleColor,
                                  fontsize: screenWidth(17)),
                            )
                          : Wrap(
                              alignment: WrapAlignment.center,
                              runSpacing: width * 0.04,
                              children: List.generate(
                                homeController.listOfText.length,
                                (index) {
                                  return Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      DraggableWidget(
                                          data: homeController.listOfText[index]),
                                      (screenWidth(28)).pw,
                                    ],
                                  );
                                },
                              ),
                            ),
                      (screenHeight(20)).ph,
                      Divider(thickness: screenWidth(40)),
                      (screenHeight(40)).ph,
                      Wrap(spacing: screenWidth(10),runSpacing: screenWidth(40),
                          crossAxisAlignment: WrapCrossAlignment.start,
                          children: List.generate(
                              homeController.classifications.length, (index) {
                            return DragTargetWidget(
                                text: homeController.classifications[index],
                                index: index,);
                          })),
                    ],
                  ),
                ))));
  }
}
