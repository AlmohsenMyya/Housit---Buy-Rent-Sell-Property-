import 'package:almohsen_s_application12/presentation/location_empty_screen/controller/location_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LocationEmptyScreen.
///
/// This class ensures that the LocationEmptyController is created when the
/// LocationEmptyScreen is first loaded.
class LocationEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocationEmptyController());
  }
}
