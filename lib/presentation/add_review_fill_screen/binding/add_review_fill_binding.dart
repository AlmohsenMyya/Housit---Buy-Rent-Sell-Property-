import 'package:almohsen_s_application12/presentation/add_review_fill_screen/controller/add_review_fill_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddReviewFillScreen.
///
/// This class ensures that the AddReviewFillController is created when the
/// AddReviewFillScreen is first loaded.
class AddReviewFillBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddReviewFillController());
  }
}
