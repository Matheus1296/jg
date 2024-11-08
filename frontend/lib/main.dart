import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:frontend/app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'Flutter GetX App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: Routes.HOME,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}
