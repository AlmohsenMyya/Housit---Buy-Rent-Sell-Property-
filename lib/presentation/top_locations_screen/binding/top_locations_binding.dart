import 'package:almohsen_s_application12/presentation/top_locations_screen/controller/top_locations_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TopLocationsScreen.
///
/// This class ensures that the TopLocationsController is created when the
/// TopLocationsScreen is first loaded.
class TopLocationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopLocationsController());
  }
}
