import 'package:task/ui/shared/colors.dart';
import 'package:task/ui/views/home_view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Alexandria',
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: AppColors.whiteColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.transparent.withOpacity(0),
        ),
      ),
      home: const MyView(),
    );
  }
}