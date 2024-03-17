import 'package:almohsen_s_application12/presentation/preferable_selected_screen/controller/preferable_selected_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PreferableSelectedScreen.
///
/// This class ensures that the PreferableSelectedController is created when the
/// PreferableSelectedScreen is first loaded.
class PreferableSelectedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PreferableSelectedController());
  }
}
