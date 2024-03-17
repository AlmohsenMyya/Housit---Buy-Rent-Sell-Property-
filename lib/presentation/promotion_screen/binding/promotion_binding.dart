import 'package:almohsen_s_application12/presentation/promotion_screen/controller/promotion_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PromotionScreen.
///
/// This class ensures that the PromotionController is created when the
/// PromotionScreen is first loaded.
class PromotionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PromotionController());
  }
}
