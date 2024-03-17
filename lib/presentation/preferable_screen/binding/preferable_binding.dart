import 'package:almohsen_s_application12/presentation/preferable_screen/controller/preferable_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PreferableScreen.
///
/// This class ensures that the PreferableController is created when the
/// PreferableScreen is first loaded.
class PreferableBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PreferableController());
  }
}
