import 'package:almohsen_s_application12/presentation/result_filter_screen/controller/result_filter_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ResultFilterScreen.
///
/// This class ensures that the ResultFilterController is created when the
/// ResultFilterScreen is first loaded.
class ResultFilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResultFilterController());
  }
}
