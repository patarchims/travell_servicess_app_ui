import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/root_widget.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'pages/pages.dart';
import 'package:travel_ui/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => DashboardPages()),
        GetPage(name: '/second', page: () => BookingPages()),
        GetPage(name: '/', page: () => DetailPages())
      ],
      home: DashboardPages(),
    );
  }
}
