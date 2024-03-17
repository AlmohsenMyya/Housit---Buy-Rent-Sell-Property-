import 'package:almohsen_s_application12/presentation/empty_map_screen/controller/empty_map_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EmptyMapScreen.
///
/// This class ensures that the EmptyMapController is created when the
/// EmptyMapScreen is first loaded.
class EmptyMapBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmptyMapController());
  }
}
