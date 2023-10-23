import 'package:flutter/material.dart';
import 'package:task/ui/shared/colors.dart';
import 'package:task/ui/shared/custom_widgets/custom_container.dart';
import 'package:task/ui/shared/utils.dart';

class DraggableWidget extends StatelessWidget {
  final String data;

  const DraggableWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    int textLength = data.length;
    final buttonWidth = (textLength * (width * 0.03)) + width * 0.02;
    return Draggable(
      data: data,
      child: CustomContainer(
        text: data,
        widthContainer: buttonWidth > width * 0.15 ? buttonWidth : width * 0.19,
      ),
      feedback: CustomContainer(
        text: data,
        color: AppColors.darkPurpleColorOpacity,
        widthContainer: buttonWidth > width * 0.15 ? buttonWidth : width * 0.19,
      ),
      childWhenDragging: CustomContainer(
        text: data,
        color: AppColors.darkPurpleColorOpacity,
        widthContainer: buttonWidth > width * 0.15 ? buttonWidth : width * 0.19,
      ),
    );
  }
}
