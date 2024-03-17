import 'package:almohsen_s_application12/presentation/view_on_map_screen/controller/view_on_map_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ViewOnMapScreen.
///
/// This class ensures that the ViewOnMapController is created when the
/// ViewOnMapScreen is first loaded.
class ViewOnMapBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ViewOnMapController());
  }
}
