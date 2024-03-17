import 'package:almohsen_s_application12/presentation/horizontal_screen/controller/horizontal_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HorizontalScreen.
///
/// This class ensures that the HorizontalController is created when the
/// HorizontalScreen is first loaded.
class HorizontalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HorizontalController());
  }
}
