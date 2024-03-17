import 'package:almohsen_s_application12/presentation/filter_choose_location_screen/controller/filter_choose_location_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FilterChooseLocationScreen.
///
/// This class ensures that the FilterChooseLocationController is created when the
/// FilterChooseLocationScreen is first loaded.
class FilterChooseLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FilterChooseLocationController());
  }
}
