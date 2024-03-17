import 'package:almohsen_s_application12/presentation/empty_search_screen/controller/empty_search_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EmptySearchScreen.
///
/// This class ensures that the EmptySearchController is created when the
/// EmptySearchScreen is first loaded.
class EmptySearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmptySearchController());
  }
}
