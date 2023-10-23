import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:task/ui/views/home_view/home_view_controller.dart';

Size size = Get.size;

double get width => Get.width;

double get height => Get.height;

double screenWidth(double percent) {
  return size.width / percent;
}
HomeViewController get homeController =>
    Get.find<HomeViewController>();

double screenHeight(double percent) {
  return size.height / percent;
}

