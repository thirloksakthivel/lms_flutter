import 'package:abhis/activity/loginpg/view/pc/dashboard_pc.dart';
import 'package:abhis/activity/loginpg/view/pc/loginpg_pc.dart';
import 'package:abhis/activity/loginpg/view/mobile/loginpg_mobile.dart';
import 'package:abhis/activity/loginpg/view/tab/loginpg_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


void main() {
  runApp(const GetMaterialApp(
    home: dashboard_pc(),
    debugShowCheckedModeBanner: false,
  ));
}
