import 'package:almohsen_s_application12/presentation/add_location_screen/controller/add_location_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddLocationScreen.
///
/// This class ensures that the AddLocationController is created when the
/// AddLocationScreen is first loaded.
class AddLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddLocationController());
  }
}
