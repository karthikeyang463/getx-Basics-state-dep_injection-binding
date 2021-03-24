import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/screens/details/binding/detail_bindling.dart';
import 'package:getx_statemanagement/screens/details/view/detail_view.dart';
import 'package:getx_statemanagement/screens/home/binding/home_binding.dart';
import 'package:getx_statemanagement/screens/home/view/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: "/home", page: () => HomeView(), binding: HomeBinding()),
        GetPage(
            name: "/details",
            page: () => DetailsView(),
            binding: Detailsbinding()),
      ],
      initialRoute: "/home",
    );
  }
}
