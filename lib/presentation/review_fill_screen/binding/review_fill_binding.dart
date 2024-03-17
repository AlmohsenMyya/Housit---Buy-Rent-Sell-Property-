import 'package:almohsen_s_application12/presentation/review_fill_screen/controller/review_fill_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ReviewFillScreen.
///
/// This class ensures that the ReviewFillController is created when the
/// ReviewFillScreen is first loaded.
class ReviewFillBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReviewFillController());
  }
}
