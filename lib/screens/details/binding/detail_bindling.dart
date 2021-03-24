import 'package:get/get.dart';
import 'package:getx_statemanagement/screens/details/controller/detail_controller.dart';

class Detailsbinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.put(DetailsController());
  }
}
