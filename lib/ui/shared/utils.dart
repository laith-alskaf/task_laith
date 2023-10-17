import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

Size size = Get.size;

double get width => Get.width;

double get height => Get.height;

double screenWidth(double percent) {
  return size.width / percent;
}

double screenHeight(double percent) {
  return size.height / percent;
}
