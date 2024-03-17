import 'package:almohsen_s_application12/presentation/all_reviews_tab_container_screen/controller/all_reviews_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AllReviewsTabContainerScreen.
///
/// This class ensures that the AllReviewsTabContainerController is created when the
/// AllReviewsTabContainerScreen is first loaded.
class AllReviewsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AllReviewsTabContainerController());
  }
}
