import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/screens/details/view/detail_view.dart';
import 'package:getx_statemanagement/screens/home/controller/home_controller.dart';
import 'package:getx_statemanagement/services/api_service.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // In Getx State Managamant
    // we can use the other class and
    //function of that class by initializing it
    // final apiService = Get.put(ApiService());
    // final homeController = Get.put(HomeController());
    // last two lines moved to bindings

    //Because we initialized new binding class
    //we dont have to initiliaze
    // final apiService = Get.put(ApiService());
    // final homeController = Get.put(HomeController());
    final homeController = Get.find<HomeController>();
    final apiService = Get.find<ApiService>();

    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Statemanagement'),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('This is a Home Screen'),
              TextButton(
                onPressed: () {
                  //same as the navigator.push
                  //If we use getx statemanagament
                  //we use Get.to(stateless/stateful widget)
                  //Moves to the Next Screen that is Specified
                  Get.to(DetailsView());
                  //same as the navigator.pushNamed
                  //If we use getx statemanagament
                  //we use Get.to(route name)
                  //Moves to the Next Screen that is Specified
                  Get.toNamed('/details');

                  print('Accessing Other class functions');
                  print('${apiService.fetchTextFrom()}');
                },
                child: Text('Next Page using to'),
              ),
              TextButton(
                onPressed: () {
                  //same as the navigator.push
                  //If we use getx statemanagament
                  //we use Get.off(stateless/stateful widget)
                  //Moves to the Next Screen that is Specified
                  // cannot move to the previous screen
                  Get.off(DetailsView());
                  //same as the navigator.push
                  //If we use getx statemanagament
                  //we use Get.off(stateless/stateful widget)
                  //Moves to the Next Screen that is Specified
                  // cannot move to the previous screen
                  Get.offNamed('/details');
                },
                child: Text('Next Page using off'),
              ),
              TextButton(
                onPressed: () {
                  print('Im Incrementing');
                  homeController.increment();
                },
                child: Text('State management- ${homeController.count.value}'),
              ),
              TextButton(
                onPressed: () {
                  print('Hi Im a Snack Bar');
                  Get.snackbar("Snack Bar", "A little alert for you");
                },
                child: Text('SnackBar'),
              ),
              TextButton(
                onPressed: () {
                  Get.defaultDialog(
                      title: 'Hi, A little messagefor you. \n Be Good');
                },
                child: Text('Dialog'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
