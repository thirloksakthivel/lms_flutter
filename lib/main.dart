import 'package:abhis/widgets/helper_widgets/top_sidenav.dart';
import 'package:abhis/activity/loginpg/dashboard/view/dashboard_pc.dart';
import 'package:abhis/activity/loginpg/view/pc/loginpg_pc.dart';
import 'package:abhis/activity/loginpg/view/mobile/loginpg_mobile.dart';
import 'package:abhis/activity/loginpg/view/tab/loginpg_tab.dart';
import 'package:abhis/widgets/helper_widgets/side_nav.dart';
import 'package:abhis/widgets/helper_widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


void main() {
  runApp( GetMaterialApp(
    home: loginpg_pc(),
    debugShowCheckedModeBanner: false,
  ));
}
