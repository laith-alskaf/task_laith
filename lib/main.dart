import 'package:flutter/material.dart';
import 'package:task/app/my_app.dart';
import 'package:get/get.dart';
import 'package:task/ui/views/home_view/home_view_controller.dart';
Future<void> main() async  {
   WidgetsFlutterBinding.ensureInitialized();
   Get.put(HomeViewController());
  runApp(const MyApp());
}
