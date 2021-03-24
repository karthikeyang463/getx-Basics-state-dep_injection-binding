import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/screens/home/controller/home_controller.dart';
import 'package:getx_statemanagement/services/api_service.dart';

class DetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Getx StateManagement
    //Two mostly same dependency Injection
    //Get.find<ApiService>();
    //
    //Get.put(ApiService());
    //most common way of inserting a dependency
    final apiService = Get.find<ApiService>();
    final homeController = Get.find<HomeController>();
    return Scaffold(
        appBar: AppBar(
          title: Text('Details page'),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Details Page Screen'),
                TextButton(
                    onPressed: () {
                      //same as the navigator.pop
                      //If we use getx statemanagament
                      //we use Get.back();
                      //Move to the Previous Screen
                      Get.back();
                    },
                    child: Text('Move to Home Page')),
                TextButton(
                    onPressed: () {
                      print('Accessing data from Different class');
                      print('${apiService.fetchTextFrom()}');
                    },
                    child: Text('Checking data injection')),
                Obx(() => TextButton(
                    onPressed: () {
                      homeController.increment();
                    },
                    child:
                        Text('Im Incrementing ${homeController.count.value}')))
              ],
            ),
          ),
        ));
  }
}
